// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restriction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Restriction _$RestrictionFromJson(Map<String, dynamic> json) {
  return _Restriction.fromJson(json);
}

/// @nodoc
mixin _$Restriction {
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this Restriction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Restriction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictionCopyWith<Restriction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionCopyWith<$Res> {
  factory $RestrictionCopyWith(
          Restriction value, $Res Function(Restriction) then) =
      _$RestrictionCopyWithImpl<$Res, Restriction>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$RestrictionCopyWithImpl<$Res, $Val extends Restriction>
    implements $RestrictionCopyWith<$Res> {
  _$RestrictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Restriction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestrictionImplCopyWith<$Res>
    implements $RestrictionCopyWith<$Res> {
  factory _$$RestrictionImplCopyWith(
          _$RestrictionImpl value, $Res Function(_$RestrictionImpl) then) =
      __$$RestrictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$RestrictionImplCopyWithImpl<$Res>
    extends _$RestrictionCopyWithImpl<$Res, _$RestrictionImpl>
    implements _$$RestrictionImplCopyWith<$Res> {
  __$$RestrictionImplCopyWithImpl(
      _$RestrictionImpl _value, $Res Function(_$RestrictionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Restriction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$RestrictionImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestrictionImpl implements _Restriction {
  _$RestrictionImpl({this.reason});

  factory _$RestrictionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictionImplFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'Restriction(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictionImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of Restriction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictionImplCopyWith<_$RestrictionImpl> get copyWith =>
      __$$RestrictionImplCopyWithImpl<_$RestrictionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictionImplToJson(
      this,
    );
  }
}

abstract class _Restriction implements Restriction {
  factory _Restriction({final String? reason}) = _$RestrictionImpl;

  factory _Restriction.fromJson(Map<String, dynamic> json) =
      _$RestrictionImpl.fromJson;

  @override
  String? get reason;

  /// Create a copy of Restriction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictionImplCopyWith<_$RestrictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
