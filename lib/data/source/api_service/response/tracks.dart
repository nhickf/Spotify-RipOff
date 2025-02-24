import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/albums.dart';
import 'package:spotify/data/source/api_service/response/artists.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';
import 'package:spotify/data/source/api_service/response/linkedfrom.dart';
import 'package:spotify/data/source/api_service/response/restriction.dart';

part 'tracks.g.dart';

part 'tracks.freezed.dart';

@freezed
class Tracks with _$Tracks {
 factory Tracks({
    String? href,
    int? total,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    List<Track>? items,
    List<Track>? tracks
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

}

@freezed
class Track with _$Track {
  factory Track({
    List<Artist>? artists,
    Album? album,
    @JsonKey(name: "available_markets") List<String>? availableMarkets,
    @JsonKey(name: "disc_number") int? discNumber,
    @JsonKey(name: "duration_ms") int? durationMs,
    bool? explicit,
    ExternalUrl? externalUrl,
    String? href,
    String? id,
    @JsonKey(name: "is_playable") bool? isPlayable,
    @JsonKey(name: "linked_from") LinkedFrom? linkedFrom,
    Restriction? restriction,
    String? name,
    @JsonKey(name: "preview_url") String? previewUrl,
    @JsonKey(name: "track_number") int? trackNumber,
    String? type,
    String? uri,
    @JsonKey(name: "is_local") bool? isLocal,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
