// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistsImpl _$$ArtistsImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsImpl(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistsImplToJson(_$ArtistsImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
    };

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      externalUrl: json['externalUrl'] == null
          ? null
          : ExternalUrl.fromJson(json['externalUrl'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'externalUrl': instance.externalUrl,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
      'images': instance.images,
    };
