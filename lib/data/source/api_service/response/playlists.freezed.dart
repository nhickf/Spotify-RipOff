// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayLists _$PlayListsFromJson(Map<String, dynamic> json) {
  return _PlayLists.fromJson(json);
}

/// @nodoc
mixin _$PlayLists {
  String? get message => throw _privateConstructorUsedError;
  PlayList? get playlist => throw _privateConstructorUsedError;

  /// Serializes this PlayLists to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayListsCopyWith<PlayLists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListsCopyWith<$Res> {
  factory $PlayListsCopyWith(PlayLists value, $Res Function(PlayLists) then) =
      _$PlayListsCopyWithImpl<$Res, PlayLists>;
  @useResult
  $Res call({String? message, PlayList? playlist});

  $PlayListCopyWith<$Res>? get playlist;
}

/// @nodoc
class _$PlayListsCopyWithImpl<$Res, $Val extends PlayLists>
    implements $PlayListsCopyWith<$Res> {
  _$PlayListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlayList?,
    ) as $Val);
  }

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayListCopyWith<$Res>? get playlist {
    if (_value.playlist == null) {
      return null;
    }

    return $PlayListCopyWith<$Res>(_value.playlist!, (value) {
      return _then(_value.copyWith(playlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayListsImplCopyWith<$Res>
    implements $PlayListsCopyWith<$Res> {
  factory _$$PlayListsImplCopyWith(
          _$PlayListsImpl value, $Res Function(_$PlayListsImpl) then) =
      __$$PlayListsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, PlayList? playlist});

  @override
  $PlayListCopyWith<$Res>? get playlist;
}

/// @nodoc
class __$$PlayListsImplCopyWithImpl<$Res>
    extends _$PlayListsCopyWithImpl<$Res, _$PlayListsImpl>
    implements _$$PlayListsImplCopyWith<$Res> {
  __$$PlayListsImplCopyWithImpl(
      _$PlayListsImpl _value, $Res Function(_$PlayListsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? playlist = freezed,
  }) {
    return _then(_$PlayListsImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlayList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayListsImpl implements _PlayLists {
  _$PlayListsImpl({this.message, this.playlist});

  factory _$PlayListsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListsImplFromJson(json);

  @override
  final String? message;
  @override
  final PlayList? playlist;

  @override
  String toString() {
    return 'PlayLists(message: $message, playlist: $playlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, playlist);

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListsImplCopyWith<_$PlayListsImpl> get copyWith =>
      __$$PlayListsImplCopyWithImpl<_$PlayListsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListsImplToJson(
      this,
    );
  }
}

abstract class _PlayLists implements PlayLists {
  factory _PlayLists({final String? message, final PlayList? playlist}) =
      _$PlayListsImpl;

  factory _PlayLists.fromJson(Map<String, dynamic> json) =
      _$PlayListsImpl.fromJson;

  @override
  String? get message;
  @override
  PlayList? get playlist;

  /// Create a copy of PlayLists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayListsImplCopyWith<_$PlayListsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayList _$PlayListFromJson(Map<String, dynamic> json) {
  return _PlayList.fromJson(json);
}

/// @nodoc
mixin _$PlayList {
  String? get href => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  List<PlayListItem>? get items => throw _privateConstructorUsedError;

  /// Serializes this PlayList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayListCopyWith<PlayList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListCopyWith<$Res> {
  factory $PlayListCopyWith(PlayList value, $Res Function(PlayList) then) =
      _$PlayListCopyWithImpl<$Res, PlayList>;
  @useResult
  $Res call(
      {String? href,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total,
      List<PlayListItem>? items});
}

/// @nodoc
class _$PlayListCopyWithImpl<$Res, $Val extends PlayList>
    implements $PlayListCopyWith<$Res> {
  _$PlayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayListItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayListImplCopyWith<$Res>
    implements $PlayListCopyWith<$Res> {
  factory _$$PlayListImplCopyWith(
          _$PlayListImpl value, $Res Function(_$PlayListImpl) then) =
      __$$PlayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total,
      List<PlayListItem>? items});
}

/// @nodoc
class __$$PlayListImplCopyWithImpl<$Res>
    extends _$PlayListCopyWithImpl<$Res, _$PlayListImpl>
    implements _$$PlayListImplCopyWith<$Res> {
  __$$PlayListImplCopyWithImpl(
      _$PlayListImpl _value, $Res Function(_$PlayListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PlayListImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayListItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayListImpl implements _PlayList {
  _$PlayListImpl(
      {this.href,
      this.limit,
      this.offset,
      this.next,
      this.previous,
      this.total,
      final List<PlayListItem>? items})
      : _items = items;

  factory _$PlayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListImplFromJson(json);

  @override
  final String? href;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? total;
  final List<PlayListItem>? _items;
  @override
  List<PlayListItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlayList(href: $href, limit: $limit, offset: $offset, next: $next, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, href, limit, offset, next,
      previous, total, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      __$$PlayListImplCopyWithImpl<_$PlayListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListImplToJson(
      this,
    );
  }
}

abstract class _PlayList implements PlayList {
  factory _PlayList(
      {final String? href,
      final int? limit,
      final int? offset,
      final String? next,
      final String? previous,
      final int? total,
      final List<PlayListItem>? items}) = _$PlayListImpl;

  factory _PlayList.fromJson(Map<String, dynamic> json) =
      _$PlayListImpl.fromJson;

  @override
  String? get href;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  int? get total;
  @override
  List<PlayListItem>? get items;

  /// Create a copy of PlayList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayListImplCopyWith<_$PlayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayListItem _$PlayListItemFromJson(Map<String, dynamic> json) {
  return _PlayListItem.fromJson(json);
}

/// @nodoc
mixin _$PlayListItem {
  bool? get collaborative => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrl? get externalUrl => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  @JsonKey(name: "snapshot_id")
  String? get snapShotId => throw _privateConstructorUsedError;
  Tracks? get tracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  /// Serializes this PlayListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayListItemCopyWith<PlayListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListItemCopyWith<$Res> {
  factory $PlayListItemCopyWith(
          PlayListItem value, $Res Function(PlayListItem) then) =
      _$PlayListItemCopyWithImpl<$Res, PlayListItem>;
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      @JsonKey(name: "external_urls") ExternalUrl? externalUrl,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      Owner? owner,
      bool? public,
      @JsonKey(name: "snapshot_id") String? snapShotId,
      Tracks? tracks,
      String? type,
      String? uri});

  $ExternalUrlCopyWith<$Res>? get externalUrl;
  $OwnerCopyWith<$Res>? get owner;
  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class _$PlayListItemCopyWithImpl<$Res, $Val extends PlayListItem>
    implements $PlayListItemCopyWith<$Res> {
  _$PlayListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapShotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      collaborative: freezed == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      snapShotId: freezed == snapShotId
          ? _value.snapShotId
          : snapShotId // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
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

  /// Create a copy of PlayListItem
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

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of PlayListItem
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
}

/// @nodoc
abstract class _$$PlayListItemImplCopyWith<$Res>
    implements $PlayListItemCopyWith<$Res> {
  factory _$$PlayListItemImplCopyWith(
          _$PlayListItemImpl value, $Res Function(_$PlayListItemImpl) then) =
      __$$PlayListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      @JsonKey(name: "external_urls") ExternalUrl? externalUrl,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      Owner? owner,
      bool? public,
      @JsonKey(name: "snapshot_id") String? snapShotId,
      Tracks? tracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlCopyWith<$Res>? get externalUrl;
  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$PlayListItemImplCopyWithImpl<$Res>
    extends _$PlayListItemCopyWithImpl<$Res, _$PlayListItemImpl>
    implements _$$PlayListItemImplCopyWith<$Res> {
  __$$PlayListItemImplCopyWithImpl(
      _$PlayListItemImpl _value, $Res Function(_$PlayListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrl = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapShotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$PlayListItemImpl(
      collaborative: freezed == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      snapShotId: freezed == snapShotId
          ? _value.snapShotId
          : snapShotId // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
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
class _$PlayListItemImpl implements _PlayListItem {
  _$PlayListItemImpl(
      {this.collaborative,
      this.description,
      @JsonKey(name: "external_urls") this.externalUrl,
      this.href,
      this.id,
      final List<Image>? images,
      this.name,
      this.owner,
      this.public,
      @JsonKey(name: "snapshot_id") this.snapShotId,
      this.tracks,
      this.type,
      this.uri})
      : _images = images;

  factory _$PlayListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayListItemImplFromJson(json);

  @override
  final bool? collaborative;
  @override
  final String? description;
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
  final String? name;
  @override
  final Owner? owner;
  @override
  final bool? public;
  @override
  @JsonKey(name: "snapshot_id")
  final String? snapShotId;
  @override
  final Tracks? tracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'PlayListItem(collaborative: $collaborative, description: $description, externalUrl: $externalUrl, href: $href, id: $id, images: $images, name: $name, owner: $owner, public: $public, snapShotId: $snapShotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayListItemImpl &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUrl, externalUrl) ||
                other.externalUrl == externalUrl) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.snapShotId, snapShotId) ||
                other.snapShotId == snapShotId) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collaborative,
      description,
      externalUrl,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      owner,
      public,
      snapShotId,
      tracks,
      type,
      uri);

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayListItemImplCopyWith<_$PlayListItemImpl> get copyWith =>
      __$$PlayListItemImplCopyWithImpl<_$PlayListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayListItemImplToJson(
      this,
    );
  }
}

abstract class _PlayListItem implements PlayListItem {
  factory _PlayListItem(
      {final bool? collaborative,
      final String? description,
      @JsonKey(name: "external_urls") final ExternalUrl? externalUrl,
      final String? href,
      final String? id,
      final List<Image>? images,
      final String? name,
      final Owner? owner,
      final bool? public,
      @JsonKey(name: "snapshot_id") final String? snapShotId,
      final Tracks? tracks,
      final String? type,
      final String? uri}) = _$PlayListItemImpl;

  factory _PlayListItem.fromJson(Map<String, dynamic> json) =
      _$PlayListItemImpl.fromJson;

  @override
  bool? get collaborative;
  @override
  String? get description;
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
  String? get name;
  @override
  Owner? get owner;
  @override
  bool? get public;
  @override
  @JsonKey(name: "snapshot_id")
  String? get snapShotId;
  @override
  Tracks? get tracks;
  @override
  String? get type;
  @override
  String? get uri;

  /// Create a copy of PlayListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayListItemImplCopyWith<_$PlayListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
