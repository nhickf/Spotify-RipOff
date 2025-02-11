import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';

part 'owner.g.dart';
part 'owner.freezed.dart';

@freezed
class Owner with _$Owner {
  factory Owner({
    @JsonKey(name: "external_urls") ExternalUrl? externalUrl,
    Followers? followers,
    String? href,
    String? id,
    String? type,
    String? uri,
    @JsonKey(name: "display_name") String? displayName,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class Followers with _$Followers {
  factory Followers({
    String? href,
    int? total,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}
