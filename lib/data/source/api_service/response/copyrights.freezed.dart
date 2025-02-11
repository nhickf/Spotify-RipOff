// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copyrights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CopyRights _$CopyRightsFromJson(Map<String, dynamic> json) {
  return _CopyRights.fromJson(json);
}

/// @nodoc
mixin _$CopyRights {
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this CopyRights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyRightsCopyWith<CopyRights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyRightsCopyWith<$Res> {
  factory $CopyRightsCopyWith(
          CopyRights value, $Res Function(CopyRights) then) =
      _$CopyRightsCopyWithImpl<$Res, CopyRights>;
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class _$CopyRightsCopyWithImpl<$Res, $Val extends CopyRights>
    implements $CopyRightsCopyWith<$Res> {
  _$CopyRightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyRights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyRightsImplCopyWith<$Res>
    implements $CopyRightsCopyWith<$Res> {
  factory _$$CopyRightsImplCopyWith(
          _$CopyRightsImpl value, $Res Function(_$CopyRightsImpl) then) =
      __$$CopyRightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class __$$CopyRightsImplCopyWithImpl<$Res>
    extends _$CopyRightsCopyWithImpl<$Res, _$CopyRightsImpl>
    implements _$$CopyRightsImplCopyWith<$Res> {
  __$$CopyRightsImplCopyWithImpl(
      _$CopyRightsImpl _value, $Res Function(_$CopyRightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopyRights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CopyRightsImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyRightsImpl implements _CopyRights {
  _$CopyRightsImpl({this.text, this.type});

  factory _$CopyRightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyRightsImplFromJson(json);

  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'CopyRights(text: $text, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyRightsImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, type);

  /// Create a copy of CopyRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyRightsImplCopyWith<_$CopyRightsImpl> get copyWith =>
      __$$CopyRightsImplCopyWithImpl<_$CopyRightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyRightsImplToJson(
      this,
    );
  }
}

abstract class _CopyRights implements CopyRights {
  factory _CopyRights({final String? text, final String? type}) =
      _$CopyRightsImpl;

  factory _CopyRights.fromJson(Map<String, dynamic> json) =
      _$CopyRightsImpl.fromJson;

  @override
  String? get text;
  @override
  String? get type;

  /// Create a copy of CopyRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyRightsImplCopyWith<_$CopyRightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
