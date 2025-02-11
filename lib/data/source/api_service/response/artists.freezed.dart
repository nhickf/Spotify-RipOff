// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return _Artists.fromJson(json);
}

/// @nodoc
mixin _$Artists {
  List<Artist>? get artists => throw _privateConstructorUsedError;

  /// Serializes this Artists to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Artists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistsCopyWith<Artists> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsCopyWith<$Res> {
  factory $ArtistsCopyWith(Artists value, $Res Function(Artists) then) =
      _$ArtistsCopyWithImpl<$Res, Artists>;
  @useResult
  $Res call({List<Artist>? artists});
}

/// @nodoc
class _$ArtistsCopyWithImpl<$Res, $Val extends Artists>
    implements $ArtistsCopyWith<$Res> {
  _$ArtistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Artists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
  }) {
    return _then(_value.copyWith(
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistsImplCopyWith<$Res> implements $ArtistsCopyWith<$Res> {
  factory _$$ArtistsImplCopyWith(
          _$ArtistsImpl value, $Res Function(_$ArtistsImpl) then) =
      __$$ArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Artist>? artists});
}

/// @nodoc
class __$$ArtistsImplCopyWithImpl<$Res>
    extends _$ArtistsCopyWithImpl<$Res, _$ArtistsImpl>
    implements _$$ArtistsImplCopyWith<$Res> {
  __$$ArtistsImplCopyWithImpl(
      _$ArtistsImpl _value, $Res Function(_$ArtistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Artists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
  }) {
    return _then(_$ArtistsImpl(
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistsImpl implements _Artists {
  _$ArtistsImpl({final List<Artist>? artists}) : _artists = artists;

  factory _$ArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsImplFromJson(json);

  final List<Artist>? _artists;
  @override
  List<Artist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Artists(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  /// Create a copy of Artists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsImplCopyWith<_$ArtistsImpl> get copyWith =>
      __$$ArtistsImplCopyWithImpl<_$ArtistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistsImplToJson(
      this,
    );
  }
}

abstract class _Artists implements Artists {
  factory _Artists({final List<Artist>? artists}) = _$ArtistsImpl;

  factory _Artists.fromJson(Map<String, dynamic> json) = _$ArtistsImpl.fromJson;

  @override
  List<Artist>? get artists;

  /// Create a copy of Artists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistsImplCopyWith<_$ArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  ExternalUrl? get externalUrl => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;

  /// Serializes this Artist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {ExternalUrl? externalUrl,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri,
      List<Image>? images});

  $ExternalUrlCopyWith<$Res>? get externalUrl;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as ExternalUrl?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ) as $Val);
  }

  /// Create a copy of Artist
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
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrl? externalUrl,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri,
      List<Image>? images});

  @override
  $ExternalUrlCopyWith<$Res>? get externalUrl;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ArtistImpl(
      externalUrl: freezed == externalUrl
          ? _value.externalUrl
          : externalUrl // ignore: cast_nullable_to_non_nullable
              as ExternalUrl?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  _$ArtistImpl(
      {this.externalUrl,
      this.href,
      this.id,
      this.name,
      this.type,
      this.uri,
      final List<Image>? images})
      : _images = images;

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final ExternalUrl? externalUrl;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? uri;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Artist(externalUrl: $externalUrl, href: $href, id: $id, name: $name, type: $type, uri: $uri, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, externalUrl, href, id, name,
      type, uri, const DeepCollectionEquality().hash(_images));

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  factory _Artist(
      {final ExternalUrl? externalUrl,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri,
      final List<Image>? images}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  ExternalUrl? get externalUrl;
  @override
  String? get href;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  List<Image>? get images;

  /// Create a copy of Artist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
