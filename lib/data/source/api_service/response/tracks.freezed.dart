// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return _Tracks.fromJson(json);
}

/// @nodoc
mixin _$Tracks {
  String? get href => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Track>? get items => throw _privateConstructorUsedError;
  List<Track>? get tracks => throw _privateConstructorUsedError;

  /// Serializes this Tracks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tracks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TracksCopyWith<Tracks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksCopyWith<$Res> {
  factory $TracksCopyWith(Tracks value, $Res Function(Tracks) then) =
      _$TracksCopyWithImpl<$Res, Tracks>;
  @useResult
  $Res call(
      {String? href,
      int? total,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      List<Track>? items,
      List<Track>? tracks});
}

/// @nodoc
class _$TracksCopyWithImpl<$Res, $Val extends Tracks>
    implements $TracksCopyWith<$Res> {
  _$TracksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tracks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? items = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TracksImplCopyWith<$Res> implements $TracksCopyWith<$Res> {
  factory _$$TracksImplCopyWith(
          _$TracksImpl value, $Res Function(_$TracksImpl) then) =
      __$$TracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      int? total,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      List<Track>? items,
      List<Track>? tracks});
}

/// @nodoc
class __$$TracksImplCopyWithImpl<$Res>
    extends _$TracksCopyWithImpl<$Res, _$TracksImpl>
    implements _$$TracksImplCopyWith<$Res> {
  __$$TracksImplCopyWithImpl(
      _$TracksImpl _value, $Res Function(_$TracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tracks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? items = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_$TracksImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      tracks: freezed == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TracksImpl implements _Tracks {
  _$TracksImpl(
      {this.href,
      this.total,
      this.limit,
      this.offset,
      this.next,
      this.previous,
      final List<Track>? items,
      final List<Track>? tracks})
      : _items = items,
        _tracks = tracks;

  factory _$TracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksImplFromJson(json);

  @override
  final String? href;
  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Track>? _items;
  @override
  List<Track>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Track>? _tracks;
  @override
  List<Track>? get tracks {
    final value = _tracks;
    if (value == null) return null;
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Tracks(href: $href, total: $total, limit: $limit, offset: $offset, next: $next, previous: $previous, items: $items, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      href,
      total,
      limit,
      offset,
      next,
      previous,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_tracks));

  /// Create a copy of Tracks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      __$$TracksImplCopyWithImpl<_$TracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracksImplToJson(
      this,
    );
  }
}

abstract class _Tracks implements Tracks {
  factory _Tracks(
      {final String? href,
      final int? total,
      final int? limit,
      final int? offset,
      final String? next,
      final String? previous,
      final List<Track>? items,
      final List<Track>? tracks}) = _$TracksImpl;

  factory _Tracks.fromJson(Map<String, dynamic> json) = _$TracksImpl.fromJson;

  @override
  String? get href;
  @override
  int? get total;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Track>? get items;
  @override
  List<Track>? get tracks;

  /// Create a copy of Tracks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  List<Artist>? get artists => throw _privateConstructorUsedError;
  Album? get album => throw _privateConstructorUsedError;
  @JsonKey(name: "available_markets")
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_number")
  int? get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_ms")
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalUrl? get externalUrl => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_playable")
  bool? get isPlayable => throw _privateConstructorUsedError;
  @JsonKey(name: "linked_from")
  LinkedFrom? get linkedFrom => throw _privateConstructorUsedError;
  Restriction? get restriction => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "preview_url")
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "track_number")
  int? get trackNumber => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "is_local")
  bool? get isLocal => throw _privateConstructorUsedError;

  /// Serializes this Track to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {List<Artist>? artists,
      Album? album,
      @JsonKey(name: "available_markets") List<String>? availableMarkets,
      @JsonKey(name: "disc_number") int? discNumber,
      @JsonKey(name: "duration_ms") int? durationMs,
      bool? explicit,
      ExternalUrl? externalUrl,
      String? href,
      String? id,
      @JsonKey(name: "is_playable") bool? isPlayable,
      @JsonKey(name: "linked_from") LinkedFrom? linkedFrom,
      Restriction? restriction,
      String? name,
      @JsonKey(name: "preview_url") String? previewUrl,
      @JsonKey(name: "track_number") int? trackNumber,
      String? type,
      String? uri,
      @JsonKey(name: "is_local") bool? isLocal});

  $AlbumCopyWith<$Res>? get album;
  $ExternalUrlCopyWith<$Res>? get externalUrl;
  $LinkedFromCopyWith<$Res>? get linkedFrom;
  $RestrictionCopyWith<$Res>? get restriction;
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
    Object? album = freezed,
    Object? availableMarkets = freezed,
    Object? discNumber = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? isPlayable = freezed,
    Object? linkedFrom = freezed,
    Object? restriction = freezed,
    Object? name = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_value.copyWith(
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as LinkedFrom?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  /// Create a copy of Track
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

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkedFromCopyWith<$Res>? get linkedFrom {
    if (_value.linkedFrom == null) {
      return null;
    }

    return $LinkedFromCopyWith<$Res>(_value.linkedFrom!, (value) {
      return _then(_value.copyWith(linkedFrom: value) as $Val);
    });
  }

  /// Create a copy of Track
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
}

/// @nodoc
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Artist>? artists,
      Album? album,
      @JsonKey(name: "available_markets") List<String>? availableMarkets,
      @JsonKey(name: "disc_number") int? discNumber,
      @JsonKey(name: "duration_ms") int? durationMs,
      bool? explicit,
      ExternalUrl? externalUrl,
      String? href,
      String? id,
      @JsonKey(name: "is_playable") bool? isPlayable,
      @JsonKey(name: "linked_from") LinkedFrom? linkedFrom,
      Restriction? restriction,
      String? name,
      @JsonKey(name: "preview_url") String? previewUrl,
      @JsonKey(name: "track_number") int? trackNumber,
      String? type,
      String? uri,
      @JsonKey(name: "is_local") bool? isLocal});

  @override
  $AlbumCopyWith<$Res>? get album;
  @override
  $ExternalUrlCopyWith<$Res>? get externalUrl;
  @override
  $LinkedFromCopyWith<$Res>? get linkedFrom;
  @override
  $RestrictionCopyWith<$Res>? get restriction;
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
    Object? album = freezed,
    Object? availableMarkets = freezed,
    Object? discNumber = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? isPlayable = freezed,
    Object? linkedFrom = freezed,
    Object? restriction = freezed,
    Object? name = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_$TrackImpl(
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      availableMarkets: freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as LinkedFrom?,
      restriction: freezed == restriction
          ? _value.restriction
          : restriction // ignore: cast_nullable_to_non_nullable
              as Restriction?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackImpl implements _Track {
  _$TrackImpl(
      {final List<Artist>? artists,
      this.album,
      @JsonKey(name: "available_markets") final List<String>? availableMarkets,
      @JsonKey(name: "disc_number") this.discNumber,
      @JsonKey(name: "duration_ms") this.durationMs,
      this.explicit,
      this.externalUrl,
      this.href,
      this.id,
      @JsonKey(name: "is_playable") this.isPlayable,
      @JsonKey(name: "linked_from") this.linkedFrom,
      this.restriction,
      this.name,
      @JsonKey(name: "preview_url") this.previewUrl,
      @JsonKey(name: "track_number") this.trackNumber,
      this.type,
      this.uri,
      @JsonKey(name: "is_local") this.isLocal})
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$TrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackImplFromJson(json);

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
  final Album? album;
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
  @JsonKey(name: "disc_number")
  final int? discNumber;
  @override
  @JsonKey(name: "duration_ms")
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final ExternalUrl? externalUrl;
  @override
  final String? href;
  @override
  final String? id;
  @override
  @JsonKey(name: "is_playable")
  final bool? isPlayable;
  @override
  @JsonKey(name: "linked_from")
  final LinkedFrom? linkedFrom;
  @override
  final Restriction? restriction;
  @override
  final String? name;
  @override
  @JsonKey(name: "preview_url")
  final String? previewUrl;
  @override
  @JsonKey(name: "track_number")
  final int? trackNumber;
  @override
  final String? type;
  @override
  final String? uri;
  @override
  @JsonKey(name: "is_local")
  final bool? isLocal;

  @override
  String toString() {
    return 'Track(artists: $artists, album: $album, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalUrl: $externalUrl, href: $href, id: $id, isPlayable: $isPlayable, linkedFrom: $linkedFrom, restriction: $restriction, name: $name, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri, isLocal: $isLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.linkedFrom, linkedFrom) ||
                other.linkedFrom == linkedFrom) &&
            (identical(other.restriction, restriction) ||
                other.restriction == restriction) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artists),
      album,
      const DeepCollectionEquality().hash(_availableMarkets),
      discNumber,
      durationMs,
      explicit,
      externalUrl,
      href,
      id,
      isPlayable,
      linkedFrom,
      restriction,
      name,
      previewUrl,
      trackNumber,
      type,
      uri,
      isLocal);

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackImplToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  factory _Track(
      {final List<Artist>? artists,
      final Album? album,
      @JsonKey(name: "available_markets") final List<String>? availableMarkets,
      @JsonKey(name: "disc_number") final int? discNumber,
      @JsonKey(name: "duration_ms") final int? durationMs,
      final bool? explicit,
      final ExternalUrl? externalUrl,
      final String? href,
      final String? id,
      @JsonKey(name: "is_playable") final bool? isPlayable,
      @JsonKey(name: "linked_from") final LinkedFrom? linkedFrom,
      final Restriction? restriction,
      final String? name,
      @JsonKey(name: "preview_url") final String? previewUrl,
      @JsonKey(name: "track_number") final int? trackNumber,
      final String? type,
      final String? uri,
      @JsonKey(name: "is_local") final bool? isLocal}) = _$TrackImpl;

  factory _Track.fromJson(Map<String, dynamic> json) = _$TrackImpl.fromJson;

  @override
  List<Artist>? get artists;
  @override
  Album? get album;
  @override
  @JsonKey(name: "available_markets")
  List<String>? get availableMarkets;
  @override
  @JsonKey(name: "disc_number")
  int? get discNumber;
  @override
  @JsonKey(name: "duration_ms")
  int? get durationMs;
  @override
  bool? get explicit;
  @override
  ExternalUrl? get externalUrl;
  @override
  String? get href;
  @override
  String? get id;
  @override
  @JsonKey(name: "is_playable")
  bool? get isPlayable;
  @override
  @JsonKey(name: "linked_from")
  LinkedFrom? get linkedFrom;
  @override
  Restriction? get restriction;
  @override
  String? get name;
  @override
  @JsonKey(name: "preview_url")
  String? get previewUrl;
  @override
  @JsonKey(name: "track_number")
  int? get trackNumber;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(name: "is_local")
  bool? get isLocal;

  /// Create a copy of Track
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
