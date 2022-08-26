///
//  Generated code. Do not modify.
//  source: leds.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use animationDescriptor instead')
const Animation$json = const {
  '1': 'Animation',
  '2': const [
    const {'1': 'deviceId', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pause', '3': 3, '4': 1, '5': 5, '10': 'pause'},
    const {'1': 'colours', '3': 4, '4': 3, '5': 11, '6': '.leds.RGB', '10': 'colours'},
    const {'1': 'meta', '3': 5, '4': 3, '5': 11, '6': '.leds.RowMeta', '10': 'meta'},
    const {'1': 'upON', '3': 6, '4': 3, '5': 11, '6': '.leds.Step', '10': 'upON'},
    const {'1': 'upOFF', '3': 7, '4': 3, '5': 11, '6': '.leds.Step', '10': 'upOFF'},
    const {'1': 'downON', '3': 8, '4': 3, '5': 11, '6': '.leds.Step', '10': 'downON'},
    const {'1': 'downOFF', '3': 9, '4': 3, '5': 11, '6': '.leds.Step', '10': 'downOFF'},
    const {'1': 'animationDuration', '3': 10, '4': 1, '5': 5, '10': 'animationDuration'},
    const {'1': 'onTime', '3': 11, '4': 1, '5': 5, '10': 'onTime'},
    const {'1': 'new', '3': 12, '4': 1, '5': 8, '10': 'new'},
    const {'1': 'rows', '3': 13, '4': 1, '5': 5, '10': 'rows'},
    const {'1': 'ledsPerRow', '3': 14, '4': 1, '5': 5, '10': 'ledsPerRow'},
  ],
};

/// Descriptor for `Animation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List animationDescriptor = $convert.base64Decode('CglBbmltYXRpb24SGgoIZGV2aWNlSWQYASABKAlSCGRldmljZUlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFcGF1c2UYAyABKAVSBXBhdXNlEiMKB2NvbG91cnMYBCADKAsyCS5sZWRzLlJHQlIHY29sb3VycxIhCgRtZXRhGAUgAygLMg0ubGVkcy5Sb3dNZXRhUgRtZXRhEh4KBHVwT04YBiADKAsyCi5sZWRzLlN0ZXBSBHVwT04SIAoFdXBPRkYYByADKAsyCi5sZWRzLlN0ZXBSBXVwT0ZGEiIKBmRvd25PThgIIAMoCzIKLmxlZHMuU3RlcFIGZG93bk9OEiQKB2Rvd25PRkYYCSADKAsyCi5sZWRzLlN0ZXBSB2Rvd25PRkYSLAoRYW5pbWF0aW9uRHVyYXRpb24YCiABKAVSEWFuaW1hdGlvbkR1cmF0aW9uEhYKBm9uVGltZRgLIAEoBVIGb25UaW1lEhAKA25ldxgMIAEoCFIDbmV3EhIKBHJvd3MYDSABKAVSBHJvd3MSHgoKbGVkc1BlclJvdxgOIAEoBVIKbGVkc1BlclJvdw==');
@$core.Deprecated('Use registerAnimationResponseDescriptor instead')
const RegisterAnimationResponse$json = const {
  '1': 'RegisterAnimationResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `RegisterAnimationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerAnimationResponseDescriptor = $convert.base64Decode('ChlSZWdpc3RlckFuaW1hdGlvblJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use getAnimationRequestDescriptor instead')
const GetAnimationRequest$json = const {
  '1': 'GetAnimationRequest',
  '2': const [
    const {'1': 'deviceId', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'user', '3': 2, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `GetAnimationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAnimationRequestDescriptor = $convert.base64Decode('ChNHZXRBbmltYXRpb25SZXF1ZXN0EhoKCGRldmljZUlkGAEgASgJUghkZXZpY2VJZBISCgR1c2VyGAIgASgJUgR1c2Vy');
@$core.Deprecated('Use getAnimationResponseDescriptor instead')
const GetAnimationResponse$json = const {
  '1': 'GetAnimationResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'animation', '3': 2, '4': 1, '5': 11, '6': '.leds.Animation', '10': 'animation'},
  ],
};

/// Descriptor for `GetAnimationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAnimationResponseDescriptor = $convert.base64Decode('ChRHZXRBbmltYXRpb25SZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxItCglhbmltYXRpb24YAiABKAsyDy5sZWRzLkFuaW1hdGlvblIJYW5pbWF0aW9u');
@$core.Deprecated('Use stepDescriptor instead')
const Step$json = const {
  '1': 'Step',
  '2': const [
    const {'1': 'positionColour', '3': 1, '4': 3, '5': 11, '6': '.leds.PositionColour', '10': 'positionColour'},
  ],
};

/// Descriptor for `Step`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepDescriptor = $convert.base64Decode('CgRTdGVwEjwKDnBvc2l0aW9uQ29sb3VyGAEgAygLMhQubGVkcy5Qb3NpdGlvbkNvbG91clIOcG9zaXRpb25Db2xvdXI=');
@$core.Deprecated('Use positionColourDescriptor instead')
const PositionColour$json = const {
  '1': 'PositionColour',
  '2': const [
    const {'1': 'position', '3': 1, '4': 1, '5': 5, '10': 'position'},
    const {'1': 'colour', '3': 2, '4': 1, '5': 5, '10': 'colour'},
  ],
};

/// Descriptor for `PositionColour`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionColourDescriptor = $convert.base64Decode('Cg5Qb3NpdGlvbkNvbG91chIaCghwb3NpdGlvbhgBIAEoBVIIcG9zaXRpb24SFgoGY29sb3VyGAIgASgFUgZjb2xvdXI=');
@$core.Deprecated('Use rowMetaDescriptor instead')
const RowMeta$json = const {
  '1': 'RowMeta',
  '2': const [
    const {'1': 'row', '3': 1, '4': 1, '5': 5, '10': 'row'},
    const {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
  ],
};

/// Descriptor for `RowMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rowMetaDescriptor = $convert.base64Decode('CgdSb3dNZXRhEhAKA3JvdxgBIAEoBVIDcm93EhwKCWRpcmVjdGlvbhgCIAEoCVIJZGlyZWN0aW9u');
@$core.Deprecated('Use rGBDescriptor instead')
const RGB$json = const {
  '1': 'RGB',
  '2': const [
    const {'1': 'red', '3': 1, '4': 1, '5': 5, '10': 'red'},
    const {'1': 'green', '3': 2, '4': 1, '5': 5, '10': 'green'},
    const {'1': 'blue', '3': 3, '4': 1, '5': 5, '10': 'blue'},
  ],
};

/// Descriptor for `RGB`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rGBDescriptor = $convert.base64Decode('CgNSR0ISEAoDcmVkGAEgASgFUgNyZWQSFAoFZ3JlZW4YAiABKAVSBWdyZWVuEhIKBGJsdWUYAyABKAVSBGJsdWU=');
@$core.Deprecated('Use rBPairingRequestDescriptor instead')
const RBPairingRequest$json = const {
  '1': 'RBPairingRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'ip', '3': 2, '4': 1, '5': 9, '10': 'ip'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'deviceId', '3': 4, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'timestampRecieved', '3': 5, '4': 1, '5': 3, '10': 'timestampRecieved'},
    const {'1': 'timestampPending', '3': 6, '4': 1, '5': 3, '10': 'timestampPending'},
    const {'1': 'rows', '3': 7, '4': 1, '5': 5, '10': 'rows'},
    const {'1': 'ledsPerRow', '3': 8, '4': 1, '5': 5, '10': 'ledsPerRow'},
  ],
};

/// Descriptor for `RBPairingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rBPairingRequestDescriptor = $convert.base64Decode('ChBSQlBhaXJpbmdSZXF1ZXN0EhIKBHR5cGUYASABKAlSBHR5cGUSDgoCaXAYAiABKAlSAmlwEhYKBnN0YXR1cxgDIAEoCVIGc3RhdHVzEhoKCGRldmljZUlkGAQgASgJUghkZXZpY2VJZBIsChF0aW1lc3RhbXBSZWNpZXZlZBgFIAEoA1IRdGltZXN0YW1wUmVjaWV2ZWQSKgoQdGltZXN0YW1wUGVuZGluZxgGIAEoA1IQdGltZXN0YW1wUGVuZGluZxISCgRyb3dzGAcgASgFUgRyb3dzEh4KCmxlZHNQZXJSb3cYCCABKAVSCmxlZHNQZXJSb3c=');
@$core.Deprecated('Use rBPairingResponseDescriptor instead')
const RBPairingResponse$json = const {
  '1': 'RBPairingResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RBPairingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rBPairingResponseDescriptor = $convert.base64Decode('ChFSQlBhaXJpbmdSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIOCgJpZBgCIAEoCVICaWQ=');
@$core.Deprecated('Use appGetDevicesRequestDescriptor instead')
const AppGetDevicesRequest$json = const {
  '1': 'AppGetDevicesRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'ip', '3': 2, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `AppGetDevicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appGetDevicesRequestDescriptor = $convert.base64Decode('ChRBcHBHZXREZXZpY2VzUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2VyEg4KAmlwGAIgASgJUgJpcA==');
@$core.Deprecated('Use appGetDevicesResponseDescriptor instead')
const AppGetDevicesResponse$json = const {
  '1': 'AppGetDevicesResponse',
  '2': const [
    const {'1': 'devices', '3': 1, '4': 3, '5': 11, '6': '.leds.Device', '10': 'devices'},
  ],
};

/// Descriptor for `AppGetDevicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appGetDevicesResponseDescriptor = $convert.base64Decode('ChVBcHBHZXREZXZpY2VzUmVzcG9uc2USJgoHZGV2aWNlcxgBIAMoCzIMLmxlZHMuRGV2aWNlUgdkZXZpY2Vz');
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'user', '3': 4, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'pairingId', '3': 5, '4': 1, '5': 9, '10': 'pairingId'},
    const {'1': 'rows', '3': 6, '4': 1, '5': 5, '10': 'rows'},
    const {'1': 'ledsPerRow', '3': 7, '4': 1, '5': 5, '10': 'ledsPerRow'},
    const {'1': 'status', '3': 8, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'active', '3': 9, '4': 1, '5': 8, '10': 'active'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEdHlwZRgDIAEoCVIEdHlwZRISCgR1c2VyGAQgASgJUgR1c2VyEhwKCXBhaXJpbmdJZBgFIAEoCVIJcGFpcmluZ0lkEhIKBHJvd3MYBiABKAVSBHJvd3MSHgoKbGVkc1BlclJvdxgHIAEoBVIKbGVkc1BlclJvdxIWCgZzdGF0dXMYCCABKAlSBnN0YXR1cxIWCgZhY3RpdmUYCSABKAhSBmFjdGl2ZQ==');
@$core.Deprecated('Use appPairingRequestDescriptor instead')
const AppPairingRequest$json = const {
  '1': 'AppPairingRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'userMail', '3': 2, '4': 1, '5': 9, '10': 'userMail'},
    const {'1': 'device', '3': 3, '4': 1, '5': 11, '6': '.leds.Device', '10': 'device'},
  ],
};

/// Descriptor for `AppPairingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appPairingRequestDescriptor = $convert.base64Decode('ChFBcHBQYWlyaW5nUmVxdWVzdBIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIaCgh1c2VyTWFpbBgCIAEoCVIIdXNlck1haWwSJAoGZGV2aWNlGAMgASgLMgwubGVkcy5EZXZpY2VSBmRldmljZQ==');
@$core.Deprecated('Use appPairingResponseDescriptor instead')
const AppPairingResponse$json = const {
  '1': 'AppPairingResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `AppPairingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appPairingResponseDescriptor = $convert.base64Decode('ChJBcHBQYWlyaW5nUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');
@$core.Deprecated('Use deviceControlDescriptor instead')
const DeviceControl$json = const {
  '1': 'DeviceControl',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'state', '3': 2, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'colour', '3': 3, '4': 1, '5': 11, '6': '.leds.RGB', '10': 'colour'},
    const {'1': 'new', '3': 4, '4': 1, '5': 8, '10': 'new'},
  ],
};

/// Descriptor for `DeviceControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceControlDescriptor = $convert.base64Decode('Cg1EZXZpY2VDb250cm9sEg4KAmlkGAEgASgJUgJpZBIUCgVzdGF0ZRgCIAEoCVIFc3RhdGUSIQoGY29sb3VyGAMgASgLMgkubGVkcy5SR0JSBmNvbG91chIQCgNuZXcYBCABKAhSA25ldw==');
@$core.Deprecated('Use getDeviceControlRequestDescriptor instead')
const GetDeviceControlRequest$json = const {
  '1': 'GetDeviceControlRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'deviceId', '3': 2, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `GetDeviceControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceControlRequestDescriptor = $convert.base64Decode('ChdHZXREZXZpY2VDb250cm9sUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2VyEhoKCGRldmljZUlkGAIgASgJUghkZXZpY2VJZA==');
@$core.Deprecated('Use getDeviceControlResponseDescriptor instead')
const GetDeviceControlResponse$json = const {
  '1': 'GetDeviceControlResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'deviceControl', '3': 2, '4': 1, '5': 11, '6': '.leds.DeviceControl', '10': 'deviceControl'},
  ],
};

/// Descriptor for `GetDeviceControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceControlResponseDescriptor = $convert.base64Decode('ChhHZXREZXZpY2VDb250cm9sUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSOQoNZGV2aWNlQ29udHJvbBgCIAEoCzITLmxlZHMuRGV2aWNlQ29udHJvbFINZGV2aWNlQ29udHJvbA==');
@$core.Deprecated('Use setDeviceControlRequestDescriptor instead')
const SetDeviceControlRequest$json = const {
  '1': 'SetDeviceControlRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'deviceControl', '3': 2, '4': 1, '5': 11, '6': '.leds.DeviceControl', '10': 'deviceControl'},
  ],
};

/// Descriptor for `SetDeviceControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDeviceControlRequestDescriptor = $convert.base64Decode('ChdTZXREZXZpY2VDb250cm9sUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2VyEjkKDWRldmljZUNvbnRyb2wYAiABKAsyEy5sZWRzLkRldmljZUNvbnRyb2xSDWRldmljZUNvbnRyb2w=');
@$core.Deprecated('Use setDeviceControlResponseDescriptor instead')
const SetDeviceControlResponse$json = const {
  '1': 'SetDeviceControlResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `SetDeviceControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDeviceControlResponseDescriptor = $convert.base64Decode('ChhTZXREZXZpY2VDb250cm9sUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');
@$core.Deprecated('Use deviceConnectionRequestDescriptor instead')
const DeviceConnectionRequest$json = const {
  '1': 'DeviceConnectionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeviceConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceConnectionRequestDescriptor = $convert.base64Decode('ChdEZXZpY2VDb25uZWN0aW9uUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deviceConnectionResponseDescriptor instead')
const DeviceConnectionResponse$json = const {
  '1': 'DeviceConnectionResponse',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 9, '10': 'action'},
    const {'1': 'deviceControl', '3': 2, '4': 1, '5': 11, '6': '.leds.DeviceControl', '10': 'deviceControl'},
    const {'1': 'animation', '3': 3, '4': 1, '5': 11, '6': '.leds.Animation', '10': 'animation'},
  ],
};

/// Descriptor for `DeviceConnectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceConnectionResponseDescriptor = $convert.base64Decode('ChhEZXZpY2VDb25uZWN0aW9uUmVzcG9uc2USFgoGYWN0aW9uGAEgASgJUgZhY3Rpb24SOQoNZGV2aWNlQ29udHJvbBgCIAEoCzITLmxlZHMuRGV2aWNlQ29udHJvbFINZGV2aWNlQ29udHJvbBItCglhbmltYXRpb24YAyABKAsyDy5sZWRzLkFuaW1hdGlvblIJYW5pbWF0aW9u');
