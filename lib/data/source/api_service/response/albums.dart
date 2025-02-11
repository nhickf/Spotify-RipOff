import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/copyrights.dart';
import 'package:spotify/data/source/api_service/response/externalIds.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';
import 'package:spotify/data/source/api_service/response/image.dart';
import 'package:spotify/data/source/api_service/response/restriction.dart';
import 'package:spotify/data/source/api_service/response/tracks.dart';

part 'albums.g.dart';
part 'albums.freezed.dart';

@freezed
class Albums with _$Albums {
  factory Albums({required List<Album> albums}) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

@freezed
class Album with _$Album {
  factory Album({
    @JsonKey(name: "album_type") required String? albumType,
    @JsonKey(name: "total_tracks") required int? totalTracks,
    @JsonKey(name: "available_markets") required List<String>? availableMarkets,
    @JsonKey(name: "external_urls") required ExternalUrl? externalUrl,
    required String? href,
    required String? id,
    required List<Image>? images,
    @JsonKey(name: "release_date") required String? releaseDate,
    @JsonKey(name: "release_date_precision")
    required String? releaseDatePrecision,
    required Restriction? restriction,
    required String? type,
    required String? uri,
    required Tracks? tracks,
    required CopyRights? copyRights,
    required ExternalIds? externalIds,
    required List<String>? genres,
    required String? label,
    required int? popularity,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

}
