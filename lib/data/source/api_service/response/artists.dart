import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';
import 'package:spotify/data/source/api_service/response/image.dart';

part 'artists.g.dart';
part 'artists.freezed.dart';

@freezed
class Artists with _$Artists {
  factory Artists({
    List<Artist>? artists
}) = _Artists;


  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}

@freezed
class Artist with _$Artist {
  factory Artist({
    ExternalUrl? externalUrl,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
    List<Image>? images,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) =>
      _$ArtistFromJson(json);
}
