// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'albums.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return _Albums.fromJson(json);
}

/// @nodoc
mixin _$Albums {
  List<Album> get albums => throw _privateConstructorUsedError;

  /// Serializes this Albums to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Albums
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumsCopyWith<Albums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsCopyWith<$Res> {
  factory $AlbumsCopyWith(Albums value, $Res Function(Albums) then) =
      _$AlbumsCopyWithImpl<$Res, Albums>;
  @useResult
  $Res call({List<Album> albums});
}

/// @nodoc
class _$AlbumsCopyWithImpl<$Res, $Val extends Albums>
    implements $AlbumsCopyWith<$Res> {
  _$AlbumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Albums
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_value.copyWith(
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumsImplCopyWith<$Res> implements $AlbumsCopyWith<$Res> {
  factory _$$AlbumsImplCopyWith(
          _$AlbumsImpl value, $Res Function(_$AlbumsImpl) then) =
      __$$AlbumsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Album> albums});
}

/// @nodoc
class __$$AlbumsImplCopyWithImpl<$Res>
    extends _$AlbumsCopyWithImpl<$Res, _$AlbumsImpl>
    implements _$$AlbumsImplCopyWith<$Res> {
  __$$AlbumsImplCopyWithImpl(
      _$AlbumsImpl _value, $Res Function(_$AlbumsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Albums
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
  }) {
    return _then(_$AlbumsImpl(
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumsImpl implements _Albums {
  _$AlbumsImpl({required final List<Album> albums}) : _albums = albums;

  factory _$AlbumsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumsImplFromJson(json);

  final List<Album> _albums;
  @override
  List<Album> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'Albums(albums: $albums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsImpl &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albums));

  /// Create a copy of Albums
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsImplCopyWith<_$AlbumsImpl> get copyWith =>
      __$$AlbumsImplCopyWithImpl<_$AlbumsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumsImplToJson(
      this,
    );
  }
}

abstract class _Albums implements Albums {
  factory _Albums({required final List<Album> albums}) = _$AlbumsImpl;

  factory _Albums.fromJson(Map<String, dynamic> json) = _$AlbumsImpl.fromJson;

  @override
  List<Album> get albums;

  /// Create a copy of Albums
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumsImplCopyWith<_$AlbumsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: "album_type")
  String? get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tracks")
  int? get totalTracks => throw _privateConstructorUsedError;
  @JsonKey(name: "available_markets")
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrl? get externalUrl => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date_precision")
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  Restriction? get restriction => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  Tracks? get tracks => throw _privateConstructorUsedError;
  CopyRights? get copyRights => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;

  /// Serializes this Album to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") String? albumType,
      @JsonKey(name: "total_tracks") int? totalTracks,
      @JsonKey(name: "available_markets") List<String>? availableMarkets,
      @JsonKey(name: "external_urls") ExternalUrl? externalUrl,
      String? href,
      String? id,
      List<Image>? images,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "release_date_precision") String? releaseDatePrecision,
      Restriction? restriction,
      String? type,
      String? uri,
      Tracks? tracks,
      CopyRights? copyRights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity});

  $ExternalUrlCopyWith<$Res>? get externalUrl;
  $RestrictionCopyWith<$Res>? get restriction;
  $TracksCopyWith<$Res>? get tracks;
  $CopyRightsCopyWith<$Res>? get copyRights;
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restriction = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? tracks = freezed,
    Object? copyRights = freezed,
    Object? externalIds = freezed,
    Object? genres = freezed,
    Object? label = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_value.copyWith(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      copyRights: freezed == copyRights
          ? _value.copyRights
          : copyRights // ignore: cast_nullable_to_non_nullable
              as CopyRights?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Album
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

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestrictionCopyWith<$Res>? get restriction {
    if (_value.restriction == null) {
      return null;
    }

    return $RestrictionCopyWith<$Res>(_value.restriction!, (value) {
      return _then(_value.copyWith(restriction: value) as $Val);
    });
  }

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TracksCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CopyRightsCopyWith<$Res>? get copyRights {
    if (_value.copyRights == null) {
      return null;
    }

    return $CopyRightsCopyWith<$Res>(_value.copyRights!, (value) {
      return _then(_value.copyWith(copyRights: value) as $Val);
    });
  }

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res>? get externalIds {
    if (_value.externalIds == null) {
      return null;
    }

    return $ExternalIdsCopyWith<$Res>(_value.externalIds!, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") String? albumType,
      @JsonKey(name: "total_tracks") int? totalTracks,
      @JsonKey(name: "available_markets") List<String>? availableMarkets,
      @JsonKey(name: "external_urls") ExternalUrl? externalUrl,
      String? href,
      String? id,
      List<Image>? images,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "release_date_precision") String? releaseDatePrecision,
      Restriction? restriction,
      String? type,
      String? uri,
      Tracks? tracks,
      CopyRights? copyRights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity});

  @override
  $ExternalUrlCopyWith<$Res>? get externalUrl;
  @override
  $RestrictionCopyWith<$Res>? get restriction;
  @override
  $TracksCopyWith<$Res>? get tracks;
  @override
  $CopyRightsCopyWith<$Res>? get copyRights;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restriction = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? tracks = freezed,
    Object? copyRights = freezed,
    Object? externalIds = freezed,
    Object? genres = freezed,
    Object? label = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_$AlbumImpl(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      availableMarkets: freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      copyRights: freezed == copyRights
          ? _value.copyRights
          : copyRights // ignore: cast_nullable_to_non_nullable
              as CopyRights?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImpl implements _Album {
  _$AlbumImpl(
      {@JsonKey(name: "album_type") required this.albumType,
      @JsonKey(name: "total_tracks") required this.totalTracks,
      @JsonKey(name: "available_markets")
      required final List<String>? availableMarkets,
      @JsonKey(name: "external_urls") required this.externalUrl,
      required this.href,
      required this.id,
      required final List<Image>? images,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "release_date_precision")
      required this.releaseDatePrecision,
      required this.restriction,
      required this.type,
      required this.uri,
      required this.tracks,
      required this.copyRights,
      required this.externalIds,
      required final List<String>? genres,
      required this.label,
      required this.popularity})
      : _availableMarkets = availableMarkets,
        _images = images,
        _genres = genres;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: "album_type")
  final String? albumType;
  @override
  @JsonKey(name: "total_tracks")
  final int? totalTracks;
  final List<String>? _availableMarkets;
  @override
  @JsonKey(name: "available_markets")
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "external_urls")
  final ExternalUrl? externalUrl;
  @override
  final String? href;
  @override
  final String? id;
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
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  final String? releaseDatePrecision;
  @override
  final Restriction? restriction;
  @override
  final String? type;
  @override
  final String? uri;
  @override
  final Tracks? tracks;
  @override
  final CopyRights? copyRights;
  @override
  final ExternalIds? externalIds;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? label;
  @override
  final int? popularity;

  @override
  String toString() {
    return 'Album(albumType: $albumType, totalTracks: $totalTracks, availableMarkets: $availableMarkets, externalUrl: $externalUrl, href: $href, id: $id, images: $images, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, restriction: $restriction, type: $type, uri: $uri, tracks: $tracks, copyRights: $copyRights, externalIds: $externalIds, genres: $genres, label: $label, popularity: $popularity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.restriction, restriction) ||
                other.restriction == restriction) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.copyRights, copyRights) ||
                other.copyRights == copyRights) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumType,
      totalTracks,
      const DeepCollectionEquality().hash(_availableMarkets),
      externalUrl,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      releaseDate,
      releaseDatePrecision,
      restriction,
      type,
      uri,
      tracks,
      copyRights,
      externalIds,
      const DeepCollectionEquality().hash(_genres),
      label,
      popularity);

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  factory _Album(
      {@JsonKey(name: "album_type") required final String? albumType,
      @JsonKey(name: "total_tracks") required final int? totalTracks,
      @JsonKey(name: "available_markets")
      required final List<String>? availableMarkets,
      @JsonKey(name: "external_urls") required final ExternalUrl? externalUrl,
      required final String? href,
      required final String? id,
      required final List<Image>? images,
      @JsonKey(name: "release_date") required final String? releaseDate,
      @JsonKey(name: "release_date_precision")
      required final String? releaseDatePrecision,
      required final Restriction? restriction,
      required final String? type,
      required final String? uri,
      required final Tracks? tracks,
      required final CopyRights? copyRights,
      required final ExternalIds? externalIds,
      required final List<String>? genres,
      required final String? label,
      required final int? popularity}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: "album_type")
  String? get albumType;
  @override
  @JsonKey(name: "total_tracks")
  int? get totalTracks;
  @override
  @JsonKey(name: "available_markets")
  List<String>? get availableMarkets;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrl? get externalUrl;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<Image>? get images;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  String? get releaseDatePrecision;
  @override
  Restriction? get restriction;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  Tracks? get tracks;
  @override
  CopyRights? get copyRights;
  @override
  ExternalIds? get externalIds;
  @override
  List<String>? get genres;
  @override
  String? get label;
  @override
  int? get popularity;

  /// Create a copy of Album
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
