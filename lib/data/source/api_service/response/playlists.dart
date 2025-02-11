import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/image.dart';
import 'package:spotify/data/source/api_service/response/owner.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';
import 'package:spotify/data/source/api_service/response/tracks.dart';

part 'playlists.g.dart';

part 'playlists.freezed.dart';

@freezed
class PlayLists with _$PlayLists {
  factory PlayLists({
    String? message,
    PlayList? playlist,
  }) = _PlayLists;

  factory PlayLists.fromJson(Map<String, dynamic> json) =>
      _$PlayListsFromJson(json);
}

@freezed
class PlayList with _$PlayList {
  factory PlayList({
    String? href,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    int? total,
    List<PlayListItem>? items,
  }) = _PlayList;

  factory PlayList.fromJson(Map<String, dynamic> json) =>
      _$PlayListFromJson(json);
}

@freezed
class PlayListItem with _$PlayListItem {
  factory PlayListItem({
    bool? collaborative,
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
    String? uri,
  }) = _PlayListItem;

  factory PlayListItem.fromJson(Map<String, dynamic> json) =>
      _$PlayListItemFromJson(json);
}
