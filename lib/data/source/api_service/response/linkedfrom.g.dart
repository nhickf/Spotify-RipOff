// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkedfrom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkedFromImpl _$$LinkedFromImplFromJson(Map<String, dynamic> json) =>
    _$LinkedFromImpl(
      href: json['href'] as String?,
      externalUrl: json['externalUrl'] == null
          ? null
          : ExternalUrl.fromJson(json['externalUrl'] as Map<String, dynamic>),
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$LinkedFromImplToJson(_$LinkedFromImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'externalUrl': instance.externalUrl,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };
