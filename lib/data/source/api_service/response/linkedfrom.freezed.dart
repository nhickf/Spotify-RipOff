// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'linkedfrom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkedFrom _$LinkedFromFromJson(Map<String, dynamic> json) {
  return _LinkedFrom.fromJson(json);
}

/// @nodoc
mixin _$LinkedFrom {
  String? get href => throw _privateConstructorUsedError;
  ExternalUrl? get externalUrl => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  /// Serializes this LinkedFrom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkedFromCopyWith<LinkedFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedFromCopyWith<$Res> {
  factory $LinkedFromCopyWith(
          LinkedFrom value, $Res Function(LinkedFrom) then) =
      _$LinkedFromCopyWithImpl<$Res, LinkedFrom>;
  @useResult
  $Res call(
      {String? href,
      ExternalUrl? externalUrl,
      String? id,
      String? type,
      String? uri});

  $ExternalUrlCopyWith<$Res>? get externalUrl;
}

/// @nodoc
class _$LinkedFromCopyWithImpl<$Res, $Val extends LinkedFrom>
    implements $LinkedFromCopyWith<$Res> {
  _$LinkedFromCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? externalUrl = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as ExternalUrl?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlCopyWith<$Res>? get externalUrl {
    if (_value.externalUrl == null) {
      return null;
    }

    return $ExternalUrlCopyWith<$Res>(_value.externalUrl!, (value) {
      return _then(_value.copyWith(externalUrl: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinkedFromImplCopyWith<$Res>
    implements $LinkedFromCopyWith<$Res> {
  factory _$$LinkedFromImplCopyWith(
          _$LinkedFromImpl value, $Res Function(_$LinkedFromImpl) then) =
      __$$LinkedFromImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      ExternalUrl? externalUrl,
      String? id,
      String? type,
      String? uri});

  @override
  $ExternalUrlCopyWith<$Res>? get externalUrl;
}

/// @nodoc
class __$$LinkedFromImplCopyWithImpl<$Res>
    extends _$LinkedFromCopyWithImpl<$Res, _$LinkedFromImpl>
    implements _$$LinkedFromImplCopyWith<$Res> {
  __$$LinkedFromImplCopyWithImpl(
      _$LinkedFromImpl _value, $Res Function(_$LinkedFromImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? externalUrl = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$LinkedFromImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as ExternalUrl?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkedFromImpl implements _LinkedFrom {
  _$LinkedFromImpl({this.href, this.externalUrl, this.id, this.type, this.uri});

  factory _$LinkedFromImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkedFromImplFromJson(json);

  @override
  final String? href;
  @override
  final ExternalUrl? externalUrl;
  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'LinkedFrom(href: $href, externalUrl: $externalUrl, id: $id, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkedFromImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, href, externalUrl, id, type, uri);

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkedFromImplCopyWith<_$LinkedFromImpl> get copyWith =>
      __$$LinkedFromImplCopyWithImpl<_$LinkedFromImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkedFromImplToJson(
      this,
    );
  }
}

abstract class _LinkedFrom implements LinkedFrom {
  factory _LinkedFrom(
      {final String? href,
      final ExternalUrl? externalUrl,
      final String? id,
      final String? type,
      final String? uri}) = _$LinkedFromImpl;

  factory _LinkedFrom.fromJson(Map<String, dynamic> json) =
      _$LinkedFromImpl.fromJson;

  @override
  String? get href;
  @override
  ExternalUrl? get externalUrl;
  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get uri;

  /// Create a copy of LinkedFrom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkedFromImplCopyWith<_$LinkedFromImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
