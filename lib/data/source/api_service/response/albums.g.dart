// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumsImpl _$$AlbumsImplFromJson(Map<String, dynamic> json) => _$AlbumsImpl(
      albums: (json['albums'] as List<dynamic>)
          .map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumsImplToJson(_$AlbumsImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumType: json['album_type'] as String?,
      totalTracks: (json['total_tracks'] as num?)?.toInt(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrl: json['external_urls'] == null
          ? null
          : ExternalUrl.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['release_date'] as String?,
      releaseDatePrecision: json['release_date_precision'] as String?,
      restriction: json['restriction'] == null
          ? null
          : Restriction.fromJson(json['restriction'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      copyRights: json['copyRights'] == null
          ? null
          : CopyRights.fromJson(json['copyRights'] as Map<String, dynamic>),
      externalIds: json['externalIds'] == null
          ? null
          : ExternalIds.fromJson(json['externalIds'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      label: json['label'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrl,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'restriction': instance.restriction,
      'type': instance.type,
      'uri': instance.uri,
      'tracks': instance.tracks,
      'copyRights': instance.copyRights,
      'externalIds': instance.externalIds,
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
    };
