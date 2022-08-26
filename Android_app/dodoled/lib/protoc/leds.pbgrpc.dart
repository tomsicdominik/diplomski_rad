///
//  Generated code. Do not modify.
//  source: leds.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'leds.pb.dart' as $0;
export 'leds.pb.dart';

class DodoledServiceClient extends $grpc.Client {
  static final _$rBPairing =
      $grpc.ClientMethod<$0.RBPairingRequest, $0.RBPairingResponse>(
          '/leds.DodoledService/RBPairing',
          ($0.RBPairingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RBPairingResponse.fromBuffer(value));
  static final _$appGetPotentialDevices =
      $grpc.ClientMethod<$0.AppGetDevicesRequest, $0.AppGetDevicesResponse>(
          '/leds.DodoledService/AppGetPotentialDevices',
          ($0.AppGetDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppGetDevicesResponse.fromBuffer(value));
  static final _$appGetPairedDevices =
      $grpc.ClientMethod<$0.AppGetDevicesRequest, $0.AppGetDevicesResponse>(
          '/leds.DodoledService/AppGetPairedDevices',
          ($0.AppGetDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppGetDevicesResponse.fromBuffer(value));
  static final _$appPairing =
      $grpc.ClientMethod<$0.AppPairingRequest, $0.AppPairingResponse>(
          '/leds.DodoledService/AppPairing',
          ($0.AppPairingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppPairingResponse.fromBuffer(value));
  static final _$getAnimation =
      $grpc.ClientMethod<$0.GetAnimationRequest, $0.GetAnimationResponse>(
          '/leds.DodoledService/GetAnimation',
          ($0.GetAnimationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAnimationResponse.fromBuffer(value));
  static final _$registerAnimation =
      $grpc.ClientMethod<$0.Animation, $0.RegisterAnimationResponse>(
          '/leds.DodoledService/RegisterAnimation',
          ($0.Animation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterAnimationResponse.fromBuffer(value));
  static final _$unpairDevice =
      $grpc.ClientMethod<$0.Device, $0.AppPairingResponse>(
          '/leds.DodoledService/UnpairDevice',
          ($0.Device value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppPairingResponse.fromBuffer(value));
  static final _$getDeviceControl = $grpc.ClientMethod<
          $0.GetDeviceControlRequest, $0.GetDeviceControlResponse>(
      '/leds.DodoledService/GetDeviceControl',
      ($0.GetDeviceControlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetDeviceControlResponse.fromBuffer(value));
  static final _$setDeviceControl = $grpc.ClientMethod<
          $0.SetDeviceControlRequest, $0.SetDeviceControlResponse>(
      '/leds.DodoledService/SetDeviceControl',
      ($0.SetDeviceControlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SetDeviceControlResponse.fromBuffer(value));
  static final _$deviceConnection = $grpc.ClientMethod<
          $0.DeviceConnectionRequest, $0.DeviceConnectionResponse>(
      '/leds.DodoledService/DeviceConnection',
      ($0.DeviceConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeviceConnectionResponse.fromBuffer(value));

  DodoledServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RBPairingResponse> rBPairing(
      $0.RBPairingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rBPairing, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppGetDevicesResponse> appGetPotentialDevices(
      $0.AppGetDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appGetPotentialDevices, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AppGetDevicesResponse> appGetPairedDevices(
      $0.AppGetDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appGetPairedDevices, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppPairingResponse> appPairing(
      $0.AppPairingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appPairing, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAnimationResponse> getAnimation(
      $0.GetAnimationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnimation, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterAnimationResponse> registerAnimation(
      $0.Animation request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerAnimation, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppPairingResponse> unpairDevice($0.Device request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpairDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDeviceControlResponse> getDeviceControl(
      $0.GetDeviceControlRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDeviceControl, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetDeviceControlResponse> setDeviceControl(
      $0.SetDeviceControlRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDeviceControl, request, options: options);
  }

  $grpc.ResponseStream<$0.DeviceConnectionResponse> deviceConnection(
      $0.DeviceConnectionRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$deviceConnection, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DodoledServiceBase extends $grpc.Service {
  $core.String get $name => 'leds.DodoledService';

  DodoledServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RBPairingRequest, $0.RBPairingResponse>(
        'RBPairing',
        rBPairing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RBPairingRequest.fromBuffer(value),
        ($0.RBPairingResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AppGetDevicesRequest, $0.AppGetDevicesResponse>(
            'AppGetPotentialDevices',
            appGetPotentialDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AppGetDevicesRequest.fromBuffer(value),
            ($0.AppGetDevicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AppGetDevicesRequest, $0.AppGetDevicesResponse>(
            'AppGetPairedDevices',
            appGetPairedDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AppGetDevicesRequest.fromBuffer(value),
            ($0.AppGetDevicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppPairingRequest, $0.AppPairingResponse>(
        'AppPairing',
        appPairing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AppPairingRequest.fromBuffer(value),
        ($0.AppPairingResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetAnimationRequest, $0.GetAnimationResponse>(
            'GetAnimation',
            getAnimation_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAnimationRequest.fromBuffer(value),
            ($0.GetAnimationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Animation, $0.RegisterAnimationResponse>(
        'RegisterAnimation',
        registerAnimation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Animation.fromBuffer(value),
        ($0.RegisterAnimationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Device, $0.AppPairingResponse>(
        'UnpairDevice',
        unpairDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Device.fromBuffer(value),
        ($0.AppPairingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDeviceControlRequest,
            $0.GetDeviceControlResponse>(
        'GetDeviceControl',
        getDeviceControl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetDeviceControlRequest.fromBuffer(value),
        ($0.GetDeviceControlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetDeviceControlRequest,
            $0.SetDeviceControlResponse>(
        'SetDeviceControl',
        setDeviceControl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetDeviceControlRequest.fromBuffer(value),
        ($0.SetDeviceControlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeviceConnectionRequest,
            $0.DeviceConnectionResponse>(
        'DeviceConnection',
        deviceConnection_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.DeviceConnectionRequest.fromBuffer(value),
        ($0.DeviceConnectionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RBPairingResponse> rBPairing_Pre($grpc.ServiceCall call,
      $async.Future<$0.RBPairingRequest> request) async {
    return rBPairing(call, await request);
  }

  $async.Future<$0.AppGetDevicesResponse> appGetPotentialDevices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AppGetDevicesRequest> request) async {
    return appGetPotentialDevices(call, await request);
  }

  $async.Future<$0.AppGetDevicesResponse> appGetPairedDevices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AppGetDevicesRequest> request) async {
    return appGetPairedDevices(call, await request);
  }

  $async.Future<$0.AppPairingResponse> appPairing_Pre($grpc.ServiceCall call,
      $async.Future<$0.AppPairingRequest> request) async {
    return appPairing(call, await request);
  }

  $async.Future<$0.GetAnimationResponse> getAnimation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAnimationRequest> request) async {
    return getAnimation(call, await request);
  }

  $async.Future<$0.RegisterAnimationResponse> registerAnimation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Animation> request) async {
    return registerAnimation(call, await request);
  }

  $async.Future<$0.AppPairingResponse> unpairDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Device> request) async {
    return unpairDevice(call, await request);
  }

  $async.Future<$0.GetDeviceControlResponse> getDeviceControl_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetDeviceControlRequest> request) async {
    return getDeviceControl(call, await request);
  }

  $async.Future<$0.SetDeviceControlResponse> setDeviceControl_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetDeviceControlRequest> request) async {
    return setDeviceControl(call, await request);
  }

  $async.Stream<$0.DeviceConnectionResponse> deviceConnection_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeviceConnectionRequest> request) async* {
    yield* deviceConnection(call, await request);
  }

  $async.Future<$0.RBPairingResponse> rBPairing(
      $grpc.ServiceCall call, $0.RBPairingRequest request);
  $async.Future<$0.AppGetDevicesResponse> appGetPotentialDevices(
      $grpc.ServiceCall call, $0.AppGetDevicesRequest request);
  $async.Future<$0.AppGetDevicesResponse> appGetPairedDevices(
      $grpc.ServiceCall call, $0.AppGetDevicesRequest request);
  $async.Future<$0.AppPairingResponse> appPairing(
      $grpc.ServiceCall call, $0.AppPairingRequest request);
  $async.Future<$0.GetAnimationResponse> getAnimation(
      $grpc.ServiceCall call, $0.GetAnimationRequest request);
  $async.Future<$0.RegisterAnimationResponse> registerAnimation(
      $grpc.ServiceCall call, $0.Animation request);
  $async.Future<$0.AppPairingResponse> unpairDevice(
      $grpc.ServiceCall call, $0.Device request);
  $async.Future<$0.GetDeviceControlResponse> getDeviceControl(
      $grpc.ServiceCall call, $0.GetDeviceControlRequest request);
  $async.Future<$0.SetDeviceControlResponse> setDeviceControl(
      $grpc.ServiceCall call, $0.SetDeviceControlRequest request);
  $async.Stream<$0.DeviceConnectionResponse> deviceConnection(
      $grpc.ServiceCall call, $0.DeviceConnectionRequest request);
}
