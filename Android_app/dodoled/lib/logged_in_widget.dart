import 'dart:typed_data';

import 'package:dodoled/protoc/leds.pb.dart' as proto;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dodoled/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:grpc/grpc.dart';
import 'package:dodoled/protoc/leds.pbgrpc.dart';
import 'dart:developer';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:toggle_switch/toggle_switch.dart';
import './pickers/material_picker.dart';



class LoggedInWidget extends StatefulWidget {
  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  AppGetDevicesResponse potentialDevices = AppGetDevicesResponse();
  AppGetDevicesResponse pairedDevices = AppGetDevicesResponse();
  proto.Animation animation = proto.Animation();
  DeviceControl deviceControl = DeviceControl();
  Device chosenDevice = Device()..name="Pick a device";
  int animationDuration = 10;
  int onTime = 10;
  var rowsList = [];
  Color currentColor = Colors.red;
  Color currentColorControl = Colors.red;
  Iterable<proto.RGB>? colours;
  int controlPosition = 0;


  void changeColor(Color color) => setState(() => currentColor = color);
  void changeColorDeviceControl(Color color) => setState(() => currentColorControl = color);

  void communicationError() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Error'),
          content: Column (
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text('Communication Error'),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop('dialog');
                        },
                        child: const Text('OK')),

                  ])
            ],
          ),


        )
    );
  }

  final user = FirebaseAuth.instance.currentUser!;
  TextEditingController DeviceNameController = new TextEditingController();
  @override
  void initState() {
    super.initState();

    _get_potential_devices(user);
    _get_paired_devices(user);
  }

  Future<ByteData> loadAsset() async {
    return rootBundle.load('assets/ca.crt');
  }

  Future<void> _get_potential_devices(User user) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = AppGetDevicesRequest()..user=user.uid;
    try {
      var response = await stub.appGetPotentialDevices(request);
      setState(() {
        potentialDevices = response;
      });
      await channel.shutdown();
    } on Exception catch (_) {
      setState(() {
        potentialDevices = AppGetDevicesResponse();
      });
      communicationError();
    }
  }

  Future<void> _get_device_control(User user) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = GetDeviceControlRequest()..user=user.uid..deviceId=chosenDevice.id;
    try {
      var response = await stub.getDeviceControl(request);
      setState(() {
        deviceControl = response.deviceControl;
        currentColorControl = Color.fromRGBO(deviceControl.colour.red, deviceControl.colour.green, deviceControl.colour.blue, 1);

        if (deviceControl.state == "off"){
          controlPosition = 0;
        }else if (deviceControl.state == "on"){
          controlPosition = 1;
        }else if (deviceControl.state == "sensor"){
          controlPosition = 2;
        }
      });
      await channel.shutdown();
    } on Exception catch (_) {
      setState(() {
        deviceControl = DeviceControl();
      });
    }
  }

  Future<void> _unpair_device(User user) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = chosenDevice;
    try {
      var response = await stub.unpairDevice(request);
      setState(() {
        chosenDevice = Device()..name="Pick a device";
      });
      await channel.shutdown();
      _get_paired_devices(user);
      Navigator.of(context, rootNavigator: true).pop('dialog');
    } on Exception catch (_) {
      setState(() {
        chosenDevice = Device()..name="Pick a device";
      });
      _get_paired_devices(user);
      Navigator.of(context, rootNavigator: true).pop('dialog');
    }
  }

  Future<void> _get_paired_devices(User user) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = AppGetDevicesRequest()..user=user.uid;


    try {
      var response = await stub.appGetPairedDevices(request);
      setState(() {
        pairedDevices = response;
      });
      await channel.shutdown();
    } on Exception catch (_) {
      setState(() {
        pairedDevices = AppGetDevicesResponse();
      });
      communicationError();
    }

  }

  Future<void> _save_animation_changes(User user) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = animation;

    animation.animationDuration = animationDuration;
    animation.onTime = onTime;

    animation.new_12 = true;
    animation.colours[1].red = currentColor.red;
    animation.colours[1].green = currentColor.green;
    animation.colours[1].blue = currentColor.blue;
    animation.new_12 = true;


    try {
      var response = await stub.registerAnimation(request);
      if (response.status != "OK"){
        communicationError();
      }
      await channel.shutdown();
    } on Exception catch (_) {
      communicationError();
    }

  }

  Future<void> _change_device_state(User user, int? index) async {
    setState(() {
      if (index == 0){
        deviceControl.state = "off";
        controlPosition = 0;
      }else if (index == 1){
        deviceControl.state = "on";
        controlPosition = 1;
      }else if (index == 2){
        deviceControl.state = "sensor";
        controlPosition = 2;
      }
      deviceControl.colour.red = currentColorControl.red;
      deviceControl.colour.green = currentColorControl.green;
      deviceControl.colour.blue = currentColorControl.blue;

      deviceControl.new_4=true;

    });



    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = proto.SetDeviceControlRequest()..user=user.uid..deviceControl=deviceControl;

    try {
      var response = await stub.setDeviceControl(request);
      if (response.status != "OK"){
        communicationError();
      } else {
        _get_device_control(user);
      }

      await channel.shutdown();
    } on Exception catch (_) {
      communicationError();
    }
  }

  Future<void> _get_animation(User user, String deviceID) async {
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = GetAnimationRequest()..user=user.uid..deviceId=deviceID;


    try {
      var response = await stub.getAnimation(request);
      setState(() {
        if (response.status == "OK"){
          var colour = response.animation.colours[1];
          currentColor = Color.fromRGBO(colour.red, colour.green, colour.blue, 1);
          animationDuration = response.animation.animationDuration;
          onTime = response.animation.onTime;
          rowsList = response.animation.meta;
          colours = response.animation.colours;
          animation = response.animation;
        } else {
          currentColor = Colors.red;
          rowsList.clear();
          chosenDevice = Device()..name="Pick a device";
          animation = proto.Animation();
          communicationError();
        }
      });
      log(response.toString());
      await channel.shutdown();
    } on Exception catch (_) {
      setState(() {
        currentColor = Colors.red;
        rowsList.clear();
        chosenDevice = Device()..name="Pick a device";
        animation = proto.Animation();
        communicationError();
      });
      communicationError();
    }


  }

  Future<void> _pair_with_device(User user, Device device) async {
    log(device.toString());
    device.status = "app_paired";
    var cert = await loadAsset();
    var creds = ChannelCredentials.secure(
        certificates: cert.buffer.asUint8List().toList()
    );

    final channel = ClientChannel(
      'dodoled.co',
      port: 50051,

      options: ChannelOptions(credentials: creds),
    );
    final stub = DodoledServiceClient(channel);

    var request = AppPairingRequest()..userId=user.uid..userMail=user.email!..device=device;

    try {
      var response = await stub.appPairing(request);
      if (response.status != "OK"){
        communicationError();
      }
      await channel.shutdown();
    } on Exception catch (_) {
      communicationError();
    }


    Navigator.of(context, rootNavigator: true).pop('dialog');
    _get_potential_devices(user);
    _get_paired_devices(user);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(

        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
                actions: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                        provider.googleLogout();
                      },
                      child: const Text('Logout'))
                ],
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.devices)),
                  Tab(icon: Icon(Icons.settings_remote)),
                  Tab(icon: Icon(Icons.create_rounded)),
                ],
              ),
              title: const Text('Dodoled'),
            ),
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          color: Colors.red,
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Text(chosenDevice.name,style: const TextStyle(color: Colors.white, fontSize: 25, backgroundColor: Colors.red)),
                            ]
                          ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text("PAIRED DEVICES:", style: TextStyle(fontSize: 18),),
                          TextButton(
                              child: const Icon(Icons.autorenew_rounded),
                              onPressed: () {
                                _get_paired_devices(user);
                              }),
                        ],
                      ),

                      //Text(''),
                      for(var item in pairedDevices.devices ) OutlinedButton(
                        onPressed: () {
                          setState(() {
                            chosenDevice = item;
                          });
                          _get_animation(user,  chosenDevice.id);
                          _get_device_control(user);
                        },
                        child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(item.name,style: const TextStyle(color: Colors.black, fontSize: 18)),
                            const Spacer(),
                            Icon(Icons.circle, color: item.active ? Colors.green: Colors.red),
                            const Icon(Icons.devices_other, color: Colors.black),
                            const SizedBox(width: 20),
                            Text(item.type,style: const TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        const Text("FIND DEVICES:", style: TextStyle(fontSize: 18),),
                        TextButton(
                            child: const Icon(Icons.autorenew_rounded),
                            onPressed: () {
                              _get_potential_devices(user);
                            }),
                        ],
                      ),

                      //Text(''),
                      for(var item in potentialDevices.devices ) OutlinedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: const Text('Add device'),
                                  content: Column (
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              const Text('Device Type:'),
                                              Text(item.type),
                                              ],
                                        ),
                                        const SizedBox(height: 20),
                                        TextField(
                                          controller: DeviceNameController,
                                          textAlign: TextAlign.left,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter Device Name',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            OutlinedButton(
                                                onPressed: () {
                                                  Navigator.of(context, rootNavigator: true).pop('dialog');
                                                },
                                                child: const Text('Cancel')),
                                            OutlinedButton(
                                                onPressed: () {
                                                  item.name = DeviceNameController.text;
                                                  _pair_with_device(user, item);

                                                },
                                                child: const Text('Add')),
                                          ])
                                          ],
                                        ),


                                )
                            );
                          },
                          child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Icon(Icons.devices_other, color: Colors.black),
                              const SizedBox(width: 20),
                              Text(item.type,style: const TextStyle(color: Colors.black)),
                              const Spacer(),
                              const Icon(Icons.add, color: Colors.red),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(chosenDevice.name,style: const TextStyle(color: Colors.white, fontSize: 25, backgroundColor: Colors.red)),
                            ]
                        ),
                      ),
                      Visibility(
                      visible: chosenDevice.id.isNotEmpty ? true:false,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(child: OutlinedButton(
                            onPressed: () {
                              if (chosenDevice.id.isNotEmpty){
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: const Text('Unpair device?'),
                                    content: Column (
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.of(context, rootNavigator: true).pop('dialog');
                                                  },
                                                  child: const Text('Cancel')),
                                              OutlinedButton(
                                                  onPressed: () {
                                                    _unpair_device(user);
                                                  },
                                                  child: const Text('Yes')),
                                            ])
                                      ],
                                    ),
                                  )
                              );
                              }

                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            child: const Text("Unpair Device"),
                          ),
                          ),
                        ],
                      ),
                      Text(""),
                      Text(""),
                      Text(""),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ToggleSwitch(
                              initialLabelIndex: controlPosition,
                              inactiveBgColor: Colors.white,
                              dividerColor: Colors.red,
                              totalSwitches: 3,
                              labels: ['OFF', 'ON', 'SENSOR'],
                              onToggle: (index) {
                                _change_device_state(user, index);
                              },
                            ),
                          ]
                      ),
                      Text(""),
                      Text(""),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                      title: const Text('Color Picker'),
                                      content: Column (
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          ColorPicker(
                                              pickerColor: currentColorControl, //default color
                                              onColorChanged: (Color color){ //on color picked
                                                changeColorDeviceControl(color);
                                              },
                                              paletteType: PaletteType.hslWithLightness,
                                              enableAlpha: false
                                          ),
                                        ],
                                      ),
                                    )
                                );

                              },
                              style: TextButton.styleFrom(
                                backgroundColor: currentColorControl,
                                primary: Colors.black,
                              ),

                              child: const Text("                  Color Picker                  "),
                            ),

                          ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () {
                              _change_device_state(user, -1);
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            child: const Text("                   Apply Color                   "),
                          ),
                        ],
                      ),
                          ]),),
                  ]),

                ),
                SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(chosenDevice.name,style: const TextStyle(color: Colors.white, fontSize: 25, backgroundColor: Colors.red)),
                            ]
                        ),
                      ),
                  Visibility(
                    visible: chosenDevice.id.isNotEmpty ? true:false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      //MaterialColorPickerExample(pickerColor: currentColor, onColorChanged: changeColor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                           child: OutlinedButton(
                               style: TextButton.styleFrom(
                                 primary: Colors.black,
                               ),
                              child: Text("Save Changes"),
                              onPressed: () {
                                _save_animation_changes(user);
                              }),
                      ),
                    ]
                  ),


                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            OutlinedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                        title: const Text('Color Picker'),
                                        content: Column (
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            ColorPicker(
                                                pickerColor: currentColor, //default color
                                                onColorChanged: (Color color){ //on color picked
                                                  changeColor(color);
                                                },
                                                paletteType: PaletteType.hslWithLightness,
                                                enableAlpha: false
                                            ),
                                          ],
                                        ),
                                      )
                                  );

                                },
                              style: TextButton.styleFrom(
                                backgroundColor: currentColor,
                                primary: Colors.black,
                              ),

                              child: const Text("                  Color Picker                  "),
                            ),

                          ]
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  <Widget>[
                            Text("Animation Duration (s): ",style: TextStyle(color: Colors.black, fontSize: 18)),
                            const Spacer(),
                            TextButton(
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  if (animationDuration > 1){
                                    setState(() {
                                      animationDuration--;
                                    });

                                  }
                                }),
                            Text(animationDuration.toString(),style: TextStyle(color: Colors.black, fontSize: 25)),
                            TextButton(
                                child: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    animationDuration++;
                                  });
                                }),
                          ]
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  <Widget>[
                            Text("ON Time (s): ",style: TextStyle(color: Colors.black, fontSize: 18)),
                            const Spacer(),
                            TextButton(
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  if (onTime > 0){
                                    setState(() {
                                      onTime--;
                                    });

                                  }
                                }),

                            Text(onTime.toString(),style: TextStyle(color: Colors.black, fontSize: 25)),
                            TextButton(
                                child: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    onTime++;
                                  });
                                }),
                          ]
                      ),

                      for (var row in rowsList)  Container(
                        margin: const EdgeInsets.all(3.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                        ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(row.row.toString(),style: const TextStyle(color: Colors.black, fontSize: 25)),
                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        row.direction = "right";
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: (row.direction=="right") ? Colors.red : Colors.white,
                                      primary: (row.direction=="right") ? Colors.white : Colors.red
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(Icons.keyboard_arrow_right, size: 15),
                                          Icon(Icons.keyboard_arrow_right, size: 15)
                                        ]
                                    )
                                ),
                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        row.direction = "left";
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: (row.direction=="left") ? Colors.red : Colors.white,
                                        primary: (row.direction=="left") ? Colors.white : Colors.red
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(Icons.keyboard_arrow_left, size: 15),
                                          Icon(Icons.keyboard_arrow_left, size: 15)
                                        ]
                                    )
                                ),
                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        row.direction = "inward";
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: (row.direction=="inward") ? Colors.red : Colors.white,
                                        primary: (row.direction=="inward") ? Colors.white : Colors.red
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(Icons.keyboard_arrow_right, size: 15),
                                          Icon(Icons.keyboard_arrow_left, size: 15)
                                        ]
                                    )
                                ),

                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        row.direction = "outward";
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: (row.direction=="outward") ? Colors.red : Colors.white,
                                        primary: (row.direction=="outward") ? Colors.white : Colors.red
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const <Widget>[
                                          Icon(Icons.keyboard_arrow_left, size: 15),
                                          Icon(Icons.keyboard_arrow_right, size: 15)
                                        ]
                                    )
                                ),
                              ]
                          ),

                        ),
                        ]),),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
