///
//  Generated code. Do not modify.
//  source: leds.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Animation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Animation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pause', $pb.PbFieldType.O3)
    ..pc<RGB>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'colours', $pb.PbFieldType.PM, subBuilder: RGB.create)
    ..pc<RowMeta>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meta', $pb.PbFieldType.PM, subBuilder: RowMeta.create)
    ..pc<Step>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upON', $pb.PbFieldType.PM, protoName: 'upON', subBuilder: Step.create)
    ..pc<Step>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upOFF', $pb.PbFieldType.PM, protoName: 'upOFF', subBuilder: Step.create)
    ..pc<Step>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downON', $pb.PbFieldType.PM, protoName: 'downON', subBuilder: Step.create)
    ..pc<Step>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downOFF', $pb.PbFieldType.PM, protoName: 'downOFF', subBuilder: Step.create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'animationDuration', $pb.PbFieldType.O3, protoName: 'animationDuration')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onTime', $pb.PbFieldType.O3, protoName: 'onTime')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'new')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rows', $pb.PbFieldType.O3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledsPerRow', $pb.PbFieldType.O3, protoName: 'ledsPerRow')
    ..hasRequiredFields = false
  ;

  Animation._() : super();
  factory Animation({
    $core.String? deviceId,
    $core.String? name,
    $core.int? pause,
    $core.Iterable<RGB>? colours,
    $core.Iterable<RowMeta>? meta,
    $core.Iterable<Step>? upON,
    $core.Iterable<Step>? upOFF,
    $core.Iterable<Step>? downON,
    $core.Iterable<Step>? downOFF,
    $core.int? animationDuration,
    $core.int? onTime,
    $core.bool? new_12,
    $core.int? rows,
    $core.int? ledsPerRow,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (pause != null) {
      _result.pause = pause;
    }
    if (colours != null) {
      _result.colours.addAll(colours);
    }
    if (meta != null) {
      _result.meta.addAll(meta);
    }
    if (upON != null) {
      _result.upON.addAll(upON);
    }
    if (upOFF != null) {
      _result.upOFF.addAll(upOFF);
    }
    if (downON != null) {
      _result.downON.addAll(downON);
    }
    if (downOFF != null) {
      _result.downOFF.addAll(downOFF);
    }
    if (animationDuration != null) {
      _result.animationDuration = animationDuration;
    }
    if (onTime != null) {
      _result.onTime = onTime;
    }
    if (new_12 != null) {
      _result.new_12 = new_12;
    }
    if (rows != null) {
      _result.rows = rows;
    }
    if (ledsPerRow != null) {
      _result.ledsPerRow = ledsPerRow;
    }
    return _result;
  }
  factory Animation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Animation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Animation clone() => Animation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Animation copyWith(void Function(Animation) updates) => super.copyWith((message) => updates(message as Animation)) as Animation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Animation create() => Animation._();
  Animation createEmptyInstance() => create();
  static $pb.PbList<Animation> createRepeated() => $pb.PbList<Animation>();
  @$core.pragma('dart2js:noInline')
  static Animation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Animation>(create);
  static Animation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pause => $_getIZ(2);
  @$pb.TagNumber(3)
  set pause($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPause() => $_has(2);
  @$pb.TagNumber(3)
  void clearPause() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RGB> get colours => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<RowMeta> get meta => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<Step> get upON => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<Step> get upOFF => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<Step> get downON => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<Step> get downOFF => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get animationDuration => $_getIZ(9);
  @$pb.TagNumber(10)
  set animationDuration($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAnimationDuration() => $_has(9);
  @$pb.TagNumber(10)
  void clearAnimationDuration() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get onTime => $_getIZ(10);
  @$pb.TagNumber(11)
  set onTime($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOnTime() => $_has(10);
  @$pb.TagNumber(11)
  void clearOnTime() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get new_12 => $_getBF(11);
  @$pb.TagNumber(12)
  set new_12($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNew_12() => $_has(11);
  @$pb.TagNumber(12)
  void clearNew_12() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get rows => $_getIZ(12);
  @$pb.TagNumber(13)
  set rows($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRows() => $_has(12);
  @$pb.TagNumber(13)
  void clearRows() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get ledsPerRow => $_getIZ(13);
  @$pb.TagNumber(14)
  set ledsPerRow($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLedsPerRow() => $_has(13);
  @$pb.TagNumber(14)
  void clearLedsPerRow() => clearField(14);
}

class RegisterAnimationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterAnimationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  RegisterAnimationResponse._() : super();
  factory RegisterAnimationResponse({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RegisterAnimationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterAnimationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterAnimationResponse clone() => RegisterAnimationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterAnimationResponse copyWith(void Function(RegisterAnimationResponse) updates) => super.copyWith((message) => updates(message as RegisterAnimationResponse)) as RegisterAnimationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterAnimationResponse create() => RegisterAnimationResponse._();
  RegisterAnimationResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterAnimationResponse> createRepeated() => $pb.PbList<RegisterAnimationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterAnimationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterAnimationResponse>(create);
  static RegisterAnimationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetAnimationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAnimationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..hasRequiredFields = false
  ;

  GetAnimationRequest._() : super();
  factory GetAnimationRequest({
    $core.String? deviceId,
    $core.String? user,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory GetAnimationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAnimationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAnimationRequest clone() => GetAnimationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAnimationRequest copyWith(void Function(GetAnimationRequest) updates) => super.copyWith((message) => updates(message as GetAnimationRequest)) as GetAnimationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAnimationRequest create() => GetAnimationRequest._();
  GetAnimationRequest createEmptyInstance() => create();
  static $pb.PbList<GetAnimationRequest> createRepeated() => $pb.PbList<GetAnimationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAnimationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAnimationRequest>(create);
  static GetAnimationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get user => $_getSZ(1);
  @$pb.TagNumber(2)
  set user($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
}

class GetAnimationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAnimationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<Animation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'animation', subBuilder: Animation.create)
    ..hasRequiredFields = false
  ;

  GetAnimationResponse._() : super();
  factory GetAnimationResponse({
    $core.String? status,
    Animation? animation,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (animation != null) {
      _result.animation = animation;
    }
    return _result;
  }
  factory GetAnimationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAnimationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAnimationResponse clone() => GetAnimationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAnimationResponse copyWith(void Function(GetAnimationResponse) updates) => super.copyWith((message) => updates(message as GetAnimationResponse)) as GetAnimationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAnimationResponse create() => GetAnimationResponse._();
  GetAnimationResponse createEmptyInstance() => create();
  static $pb.PbList<GetAnimationResponse> createRepeated() => $pb.PbList<GetAnimationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAnimationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAnimationResponse>(create);
  static GetAnimationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  Animation get animation => $_getN(1);
  @$pb.TagNumber(2)
  set animation(Animation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnimation() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimation() => clearField(2);
  @$pb.TagNumber(2)
  Animation ensureAnimation() => $_ensure(1);
}

class Step extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Step', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..pc<PositionColour>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'positionColour', $pb.PbFieldType.PM, protoName: 'positionColour', subBuilder: PositionColour.create)
    ..hasRequiredFields = false
  ;

  Step._() : super();
  factory Step({
    $core.Iterable<PositionColour>? positionColour,
  }) {
    final _result = create();
    if (positionColour != null) {
      _result.positionColour.addAll(positionColour);
    }
    return _result;
  }
  factory Step.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Step.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Step clone() => Step()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Step copyWith(void Function(Step) updates) => super.copyWith((message) => updates(message as Step)) as Step; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Step create() => Step._();
  Step createEmptyInstance() => create();
  static $pb.PbList<Step> createRepeated() => $pb.PbList<Step>();
  @$core.pragma('dart2js:noInline')
  static Step getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Step>(create);
  static Step? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PositionColour> get positionColour => $_getList(0);
}

class PositionColour extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PositionColour', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'colour', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PositionColour._() : super();
  factory PositionColour({
    $core.int? position,
    $core.int? colour,
  }) {
    final _result = create();
    if (position != null) {
      _result.position = position;
    }
    if (colour != null) {
      _result.colour = colour;
    }
    return _result;
  }
  factory PositionColour.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositionColour.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositionColour clone() => PositionColour()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositionColour copyWith(void Function(PositionColour) updates) => super.copyWith((message) => updates(message as PositionColour)) as PositionColour; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PositionColour create() => PositionColour._();
  PositionColour createEmptyInstance() => create();
  static $pb.PbList<PositionColour> createRepeated() => $pb.PbList<PositionColour>();
  @$core.pragma('dart2js:noInline')
  static PositionColour getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionColour>(create);
  static PositionColour? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get position => $_getIZ(0);
  @$pb.TagNumber(1)
  set position($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get colour => $_getIZ(1);
  @$pb.TagNumber(2)
  set colour($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColour() => $_has(1);
  @$pb.TagNumber(2)
  void clearColour() => clearField(2);
}

class RowMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RowMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'row', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction')
    ..hasRequiredFields = false
  ;

  RowMeta._() : super();
  factory RowMeta({
    $core.int? row,
    $core.String? direction,
  }) {
    final _result = create();
    if (row != null) {
      _result.row = row;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory RowMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RowMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RowMeta clone() => RowMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RowMeta copyWith(void Function(RowMeta) updates) => super.copyWith((message) => updates(message as RowMeta)) as RowMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RowMeta create() => RowMeta._();
  RowMeta createEmptyInstance() => create();
  static $pb.PbList<RowMeta> createRepeated() => $pb.PbList<RowMeta>();
  @$core.pragma('dart2js:noInline')
  static RowMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RowMeta>(create);
  static RowMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get row => $_getIZ(0);
  @$pb.TagNumber(1)
  set row($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRow() => $_has(0);
  @$pb.TagNumber(1)
  void clearRow() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);
}

class RGB extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RGB', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blue', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RGB._() : super();
  factory RGB({
    $core.int? red,
    $core.int? green,
    $core.int? blue,
  }) {
    final _result = create();
    if (red != null) {
      _result.red = red;
    }
    if (green != null) {
      _result.green = green;
    }
    if (blue != null) {
      _result.blue = blue;
    }
    return _result;
  }
  factory RGB.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RGB.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RGB clone() => RGB()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RGB copyWith(void Function(RGB) updates) => super.copyWith((message) => updates(message as RGB)) as RGB; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RGB create() => RGB._();
  RGB createEmptyInstance() => create();
  static $pb.PbList<RGB> createRepeated() => $pb.PbList<RGB>();
  @$core.pragma('dart2js:noInline')
  static RGB getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RGB>(create);
  static RGB? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get red => $_getIZ(0);
  @$pb.TagNumber(1)
  set red($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get green => $_getIZ(1);
  @$pb.TagNumber(2)
  set green($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get blue => $_getIZ(2);
  @$pb.TagNumber(3)
  set blue($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => clearField(3);
}

class RBPairingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RBPairingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampRecieved', protoName: 'timestampRecieved')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampPending', protoName: 'timestampPending')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rows', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledsPerRow', $pb.PbFieldType.O3, protoName: 'ledsPerRow')
    ..hasRequiredFields = false
  ;

  RBPairingRequest._() : super();
  factory RBPairingRequest({
    $core.String? type,
    $core.String? ip,
    $core.String? status,
    $core.String? deviceId,
    $fixnum.Int64? timestampRecieved,
    $fixnum.Int64? timestampPending,
    $core.int? rows,
    $core.int? ledsPerRow,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (status != null) {
      _result.status = status;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (timestampRecieved != null) {
      _result.timestampRecieved = timestampRecieved;
    }
    if (timestampPending != null) {
      _result.timestampPending = timestampPending;
    }
    if (rows != null) {
      _result.rows = rows;
    }
    if (ledsPerRow != null) {
      _result.ledsPerRow = ledsPerRow;
    }
    return _result;
  }
  factory RBPairingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RBPairingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RBPairingRequest clone() => RBPairingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RBPairingRequest copyWith(void Function(RBPairingRequest) updates) => super.copyWith((message) => updates(message as RBPairingRequest)) as RBPairingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RBPairingRequest create() => RBPairingRequest._();
  RBPairingRequest createEmptyInstance() => create();
  static $pb.PbList<RBPairingRequest> createRepeated() => $pb.PbList<RBPairingRequest>();
  @$core.pragma('dart2js:noInline')
  static RBPairingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RBPairingRequest>(create);
  static RBPairingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ip => $_getSZ(1);
  @$pb.TagNumber(2)
  set ip($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get deviceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestampRecieved => $_getI64(4);
  @$pb.TagNumber(5)
  set timestampRecieved($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestampRecieved() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestampRecieved() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestampPending => $_getI64(5);
  @$pb.TagNumber(6)
  set timestampPending($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestampPending() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestampPending() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get rows => $_getIZ(6);
  @$pb.TagNumber(7)
  set rows($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRows() => $_has(6);
  @$pb.TagNumber(7)
  void clearRows() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ledsPerRow => $_getIZ(7);
  @$pb.TagNumber(8)
  set ledsPerRow($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLedsPerRow() => $_has(7);
  @$pb.TagNumber(8)
  void clearLedsPerRow() => clearField(8);
}

class RBPairingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RBPairingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  RBPairingResponse._() : super();
  factory RBPairingResponse({
    $core.String? status,
    $core.String? id,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory RBPairingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RBPairingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RBPairingResponse clone() => RBPairingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RBPairingResponse copyWith(void Function(RBPairingResponse) updates) => super.copyWith((message) => updates(message as RBPairingResponse)) as RBPairingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RBPairingResponse create() => RBPairingResponse._();
  RBPairingResponse createEmptyInstance() => create();
  static $pb.PbList<RBPairingResponse> createRepeated() => $pb.PbList<RBPairingResponse>();
  @$core.pragma('dart2js:noInline')
  static RBPairingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RBPairingResponse>(create);
  static RBPairingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class AppGetDevicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppGetDevicesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..hasRequiredFields = false
  ;

  AppGetDevicesRequest._() : super();
  factory AppGetDevicesRequest({
    $core.String? user,
    $core.String? ip,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    return _result;
  }
  factory AppGetDevicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppGetDevicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppGetDevicesRequest clone() => AppGetDevicesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppGetDevicesRequest copyWith(void Function(AppGetDevicesRequest) updates) => super.copyWith((message) => updates(message as AppGetDevicesRequest)) as AppGetDevicesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppGetDevicesRequest create() => AppGetDevicesRequest._();
  AppGetDevicesRequest createEmptyInstance() => create();
  static $pb.PbList<AppGetDevicesRequest> createRepeated() => $pb.PbList<AppGetDevicesRequest>();
  @$core.pragma('dart2js:noInline')
  static AppGetDevicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppGetDevicesRequest>(create);
  static AppGetDevicesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ip => $_getSZ(1);
  @$pb.TagNumber(2)
  set ip($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIp() => clearField(2);
}

class AppGetDevicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppGetDevicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..pc<Device>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devices', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..hasRequiredFields = false
  ;

  AppGetDevicesResponse._() : super();
  factory AppGetDevicesResponse({
    $core.Iterable<Device>? devices,
  }) {
    final _result = create();
    if (devices != null) {
      _result.devices.addAll(devices);
    }
    return _result;
  }
  factory AppGetDevicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppGetDevicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppGetDevicesResponse clone() => AppGetDevicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppGetDevicesResponse copyWith(void Function(AppGetDevicesResponse) updates) => super.copyWith((message) => updates(message as AppGetDevicesResponse)) as AppGetDevicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppGetDevicesResponse create() => AppGetDevicesResponse._();
  AppGetDevicesResponse createEmptyInstance() => create();
  static $pb.PbList<AppGetDevicesResponse> createRepeated() => $pb.PbList<AppGetDevicesResponse>();
  @$core.pragma('dart2js:noInline')
  static AppGetDevicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppGetDevicesResponse>(create);
  static AppGetDevicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Device> get devices => $_getList(0);
}

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Device', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairingId', protoName: 'pairingId')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rows', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledsPerRow', $pb.PbFieldType.O3, protoName: 'ledsPerRow')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device({
    $core.String? id,
    $core.String? name,
    $core.String? type,
    $core.String? user,
    $core.String? pairingId,
    $core.int? rows,
    $core.int? ledsPerRow,
    $core.String? status,
    $core.bool? active,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (user != null) {
      _result.user = user;
    }
    if (pairingId != null) {
      _result.pairingId = pairingId;
    }
    if (rows != null) {
      _result.rows = rows;
    }
    if (ledsPerRow != null) {
      _result.ledsPerRow = ledsPerRow;
    }
    if (status != null) {
      _result.status = status;
    }
    if (active != null) {
      _result.active = active;
    }
    return _result;
  }
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device)) as Device; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get user => $_getSZ(3);
  @$pb.TagNumber(4)
  set user($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUser() => $_has(3);
  @$pb.TagNumber(4)
  void clearUser() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get pairingId => $_getSZ(4);
  @$pb.TagNumber(5)
  set pairingId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPairingId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPairingId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get rows => $_getIZ(5);
  @$pb.TagNumber(6)
  set rows($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRows() => $_has(5);
  @$pb.TagNumber(6)
  void clearRows() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get ledsPerRow => $_getIZ(6);
  @$pb.TagNumber(7)
  set ledsPerRow($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLedsPerRow() => $_has(6);
  @$pb.TagNumber(7)
  void clearLedsPerRow() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get status => $_getSZ(7);
  @$pb.TagNumber(8)
  set status($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get active => $_getBF(8);
  @$pb.TagNumber(9)
  set active($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasActive() => $_has(8);
  @$pb.TagNumber(9)
  void clearActive() => clearField(9);
}

class AppPairingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppPairingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userMail', protoName: 'userMail')
    ..aOM<Device>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'device', subBuilder: Device.create)
    ..hasRequiredFields = false
  ;

  AppPairingRequest._() : super();
  factory AppPairingRequest({
    $core.String? userId,
    $core.String? userMail,
    Device? device,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (userMail != null) {
      _result.userMail = userMail;
    }
    if (device != null) {
      _result.device = device;
    }
    return _result;
  }
  factory AppPairingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppPairingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppPairingRequest clone() => AppPairingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppPairingRequest copyWith(void Function(AppPairingRequest) updates) => super.copyWith((message) => updates(message as AppPairingRequest)) as AppPairingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppPairingRequest create() => AppPairingRequest._();
  AppPairingRequest createEmptyInstance() => create();
  static $pb.PbList<AppPairingRequest> createRepeated() => $pb.PbList<AppPairingRequest>();
  @$core.pragma('dart2js:noInline')
  static AppPairingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppPairingRequest>(create);
  static AppPairingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userMail => $_getSZ(1);
  @$pb.TagNumber(2)
  set userMail($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserMail() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserMail() => clearField(2);

  @$pb.TagNumber(3)
  Device get device => $_getN(2);
  @$pb.TagNumber(3)
  set device(Device v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => clearField(3);
  @$pb.TagNumber(3)
  Device ensureDevice() => $_ensure(2);
}

class AppPairingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppPairingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AppPairingResponse._() : super();
  factory AppPairingResponse({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AppPairingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppPairingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppPairingResponse clone() => AppPairingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppPairingResponse copyWith(void Function(AppPairingResponse) updates) => super.copyWith((message) => updates(message as AppPairingResponse)) as AppPairingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppPairingResponse create() => AppPairingResponse._();
  AppPairingResponse createEmptyInstance() => create();
  static $pb.PbList<AppPairingResponse> createRepeated() => $pb.PbList<AppPairingResponse>();
  @$core.pragma('dart2js:noInline')
  static AppPairingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppPairingResponse>(create);
  static AppPairingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class DeviceControl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceControl', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOM<RGB>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'colour', subBuilder: RGB.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'new')
    ..hasRequiredFields = false
  ;

  DeviceControl._() : super();
  factory DeviceControl({
    $core.String? id,
    $core.String? state,
    RGB? colour,
    $core.bool? new_4,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (state != null) {
      _result.state = state;
    }
    if (colour != null) {
      _result.colour = colour;
    }
    if (new_4 != null) {
      _result.new_4 = new_4;
    }
    return _result;
  }
  factory DeviceControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceControl clone() => DeviceControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceControl copyWith(void Function(DeviceControl) updates) => super.copyWith((message) => updates(message as DeviceControl)) as DeviceControl; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceControl create() => DeviceControl._();
  DeviceControl createEmptyInstance() => create();
  static $pb.PbList<DeviceControl> createRepeated() => $pb.PbList<DeviceControl>();
  @$core.pragma('dart2js:noInline')
  static DeviceControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceControl>(create);
  static DeviceControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(2)
  set state($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  RGB get colour => $_getN(2);
  @$pb.TagNumber(3)
  set colour(RGB v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasColour() => $_has(2);
  @$pb.TagNumber(3)
  void clearColour() => clearField(3);
  @$pb.TagNumber(3)
  RGB ensureColour() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get new_4 => $_getBF(3);
  @$pb.TagNumber(4)
  set new_4($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNew_4() => $_has(3);
  @$pb.TagNumber(4)
  void clearNew_4() => clearField(4);
}

class GetDeviceControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceControlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId', protoName: 'deviceId')
    ..hasRequiredFields = false
  ;

  GetDeviceControlRequest._() : super();
  factory GetDeviceControlRequest({
    $core.String? user,
    $core.String? deviceId,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    return _result;
  }
  factory GetDeviceControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceControlRequest clone() => GetDeviceControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceControlRequest copyWith(void Function(GetDeviceControlRequest) updates) => super.copyWith((message) => updates(message as GetDeviceControlRequest)) as GetDeviceControlRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDeviceControlRequest create() => GetDeviceControlRequest._();
  GetDeviceControlRequest createEmptyInstance() => create();
  static $pb.PbList<GetDeviceControlRequest> createRepeated() => $pb.PbList<GetDeviceControlRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceControlRequest>(create);
  static GetDeviceControlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);
}

class GetDeviceControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDeviceControlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<DeviceControl>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceControl', protoName: 'deviceControl', subBuilder: DeviceControl.create)
    ..hasRequiredFields = false
  ;

  GetDeviceControlResponse._() : super();
  factory GetDeviceControlResponse({
    $core.String? status,
    DeviceControl? deviceControl,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (deviceControl != null) {
      _result.deviceControl = deviceControl;
    }
    return _result;
  }
  factory GetDeviceControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceControlResponse clone() => GetDeviceControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceControlResponse copyWith(void Function(GetDeviceControlResponse) updates) => super.copyWith((message) => updates(message as GetDeviceControlResponse)) as GetDeviceControlResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDeviceControlResponse create() => GetDeviceControlResponse._();
  GetDeviceControlResponse createEmptyInstance() => create();
  static $pb.PbList<GetDeviceControlResponse> createRepeated() => $pb.PbList<GetDeviceControlResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceControlResponse>(create);
  static GetDeviceControlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  DeviceControl get deviceControl => $_getN(1);
  @$pb.TagNumber(2)
  set deviceControl(DeviceControl v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceControl() => clearField(2);
  @$pb.TagNumber(2)
  DeviceControl ensureDeviceControl() => $_ensure(1);
}

class SetDeviceControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDeviceControlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user')
    ..aOM<DeviceControl>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceControl', protoName: 'deviceControl', subBuilder: DeviceControl.create)
    ..hasRequiredFields = false
  ;

  SetDeviceControlRequest._() : super();
  factory SetDeviceControlRequest({
    $core.String? user,
    DeviceControl? deviceControl,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (deviceControl != null) {
      _result.deviceControl = deviceControl;
    }
    return _result;
  }
  factory SetDeviceControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDeviceControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDeviceControlRequest clone() => SetDeviceControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDeviceControlRequest copyWith(void Function(SetDeviceControlRequest) updates) => super.copyWith((message) => updates(message as SetDeviceControlRequest)) as SetDeviceControlRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetDeviceControlRequest create() => SetDeviceControlRequest._();
  SetDeviceControlRequest createEmptyInstance() => create();
  static $pb.PbList<SetDeviceControlRequest> createRepeated() => $pb.PbList<SetDeviceControlRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDeviceControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDeviceControlRequest>(create);
  static SetDeviceControlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  DeviceControl get deviceControl => $_getN(1);
  @$pb.TagNumber(2)
  set deviceControl(DeviceControl v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceControl() => clearField(2);
  @$pb.TagNumber(2)
  DeviceControl ensureDeviceControl() => $_ensure(1);
}

class SetDeviceControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetDeviceControlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  SetDeviceControlResponse._() : super();
  factory SetDeviceControlResponse({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SetDeviceControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetDeviceControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetDeviceControlResponse clone() => SetDeviceControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetDeviceControlResponse copyWith(void Function(SetDeviceControlResponse) updates) => super.copyWith((message) => updates(message as SetDeviceControlResponse)) as SetDeviceControlResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetDeviceControlResponse create() => SetDeviceControlResponse._();
  SetDeviceControlResponse createEmptyInstance() => create();
  static $pb.PbList<SetDeviceControlResponse> createRepeated() => $pb.PbList<SetDeviceControlResponse>();
  @$core.pragma('dart2js:noInline')
  static SetDeviceControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetDeviceControlResponse>(create);
  static SetDeviceControlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class DeviceConnectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceConnectionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeviceConnectionRequest._() : super();
  factory DeviceConnectionRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeviceConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceConnectionRequest clone() => DeviceConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceConnectionRequest copyWith(void Function(DeviceConnectionRequest) updates) => super.copyWith((message) => updates(message as DeviceConnectionRequest)) as DeviceConnectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceConnectionRequest create() => DeviceConnectionRequest._();
  DeviceConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceConnectionRequest> createRepeated() => $pb.PbList<DeviceConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceConnectionRequest>(create);
  static DeviceConnectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeviceConnectionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceConnectionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'leds'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action')
    ..aOM<DeviceControl>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceControl', protoName: 'deviceControl', subBuilder: DeviceControl.create)
    ..aOM<Animation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'animation', subBuilder: Animation.create)
    ..hasRequiredFields = false
  ;

  DeviceConnectionResponse._() : super();
  factory DeviceConnectionResponse({
    $core.String? action,
    DeviceControl? deviceControl,
    Animation? animation,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    if (deviceControl != null) {
      _result.deviceControl = deviceControl;
    }
    if (animation != null) {
      _result.animation = animation;
    }
    return _result;
  }
  factory DeviceConnectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceConnectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceConnectionResponse clone() => DeviceConnectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceConnectionResponse copyWith(void Function(DeviceConnectionResponse) updates) => super.copyWith((message) => updates(message as DeviceConnectionResponse)) as DeviceConnectionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceConnectionResponse create() => DeviceConnectionResponse._();
  DeviceConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<DeviceConnectionResponse> createRepeated() => $pb.PbList<DeviceConnectionResponse>();
  @$core.pragma('dart2js:noInline')
  static DeviceConnectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceConnectionResponse>(create);
  static DeviceConnectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get action => $_getSZ(0);
  @$pb.TagNumber(1)
  set action($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  @$pb.TagNumber(2)
  DeviceControl get deviceControl => $_getN(1);
  @$pb.TagNumber(2)
  set deviceControl(DeviceControl v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceControl() => clearField(2);
  @$pb.TagNumber(2)
  DeviceControl ensureDeviceControl() => $_ensure(1);

  @$pb.TagNumber(3)
  Animation get animation => $_getN(2);
  @$pb.TagNumber(3)
  set animation(Animation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnimation() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnimation() => clearField(3);
  @$pb.TagNumber(3)
  Animation ensureAnimation() => $_ensure(2);
}

