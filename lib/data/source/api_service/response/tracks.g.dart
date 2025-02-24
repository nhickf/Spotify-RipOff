// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TracksImpl _$$TracksImplFromJson(Map<String, dynamic> json) => _$TracksImpl(
      href: json['href'] as String?,
      total: (json['total'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TracksImplToJson(_$TracksImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'items': instance.items,
      'tracks': instance.tracks,
    };

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num?)?.toInt(),
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      explicit: json['explicit'] as bool?,
      externalUrl: json['externalUrl'] == null
          ? null
          : ExternalUrl.fromJson(json['externalUrl'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      linkedFrom: json['linked_from'] == null
          ? null
          : LinkedFrom.fromJson(json['linked_from'] as Map<String, dynamic>),
      restriction: json['restriction'] == null
          ? null
          : Restriction.fromJson(json['restriction'] as Map<String, dynamic>),
      name: json['name'] as String?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: (json['track_number'] as num?)?.toInt(),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'album': instance.album,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'externalUrl': instance.externalUrl,
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom,
      'restriction': instance.restriction,
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };
