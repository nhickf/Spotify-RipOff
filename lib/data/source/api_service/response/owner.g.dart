// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      externalUrl: json['external_urls'] == null
          ? null
          : ExternalUrl.fromJson(json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrl,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
      'display_name': instance.displayName,
    };

_$FollowersImpl _$$FollowersImplFromJson(Map<String, dynamic> json) =>
    _$FollowersImpl(
      href: json['href'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FollowersImplToJson(_$FollowersImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
