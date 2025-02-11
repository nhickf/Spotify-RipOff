// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayListsImpl _$$PlayListsImplFromJson(Map<String, dynamic> json) =>
    _$PlayListsImpl(
      message: json['message'] as String?,
      playlist: json['playlist'] == null
          ? null
          : PlayList.fromJson(json['playlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayListsImplToJson(_$PlayListsImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'playlist': instance.playlist,
    };

_$PlayListImpl _$$PlayListImplFromJson(Map<String, dynamic> json) =>
    _$PlayListImpl(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PlayListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlayListImplToJson(_$PlayListImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

_$PlayListItemImpl _$$PlayListItemImplFromJson(Map<String, dynamic> json) =>
    _$PlayListItemImpl(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
      externalUrl: json['external_urls'] == null
          ? null
          : ExternalUrl.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      public: json['public'] as bool?,
      snapShotId: json['snapshot_id'] as String?,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$PlayListItemImplToJson(_$PlayListItemImpl instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrl,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'public': instance.public,
      'snapshot_id': instance.snapShotId,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };
