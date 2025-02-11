// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExternalUrl _$ExternalUrlFromJson(Map<String, dynamic> json) {
  return _ExternalUrl.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrl {
  String? get spotify => throw _privateConstructorUsedError;

  /// Serializes this ExternalUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalUrlCopyWith<ExternalUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlCopyWith<$Res> {
  factory $ExternalUrlCopyWith(
          ExternalUrl value, $Res Function(ExternalUrl) then) =
      _$ExternalUrlCopyWithImpl<$Res, ExternalUrl>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlCopyWithImpl<$Res, $Val extends ExternalUrl>
    implements $ExternalUrlCopyWith<$Res> {
  _$ExternalUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_value.copyWith(
      spotify: freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlImplCopyWith<$Res>
    implements $ExternalUrlCopyWith<$Res> {
  factory _$$ExternalUrlImplCopyWith(
          _$ExternalUrlImpl value, $Res Function(_$ExternalUrlImpl) then) =
      __$$ExternalUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlImplCopyWithImpl<$Res>
    extends _$ExternalUrlCopyWithImpl<$Res, _$ExternalUrlImpl>
    implements _$$ExternalUrlImplCopyWith<$Res> {
  __$$ExternalUrlImplCopyWithImpl(
      _$ExternalUrlImpl _value, $Res Function(_$ExternalUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlImpl(
      spotify: freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlImpl implements _ExternalUrl {
  _$ExternalUrlImpl({this.spotify});

  factory _$ExternalUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrl(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  /// Create a copy of ExternalUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlImplCopyWith<_$ExternalUrlImpl> get copyWith =>
      __$$ExternalUrlImplCopyWithImpl<_$ExternalUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrl implements ExternalUrl {
  factory _ExternalUrl({final String? spotify}) = _$ExternalUrlImpl;

  factory _ExternalUrl.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlImpl.fromJson;

  @override
  String? get spotify;

  /// Create a copy of ExternalUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalUrlImplCopyWith<_$ExternalUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
