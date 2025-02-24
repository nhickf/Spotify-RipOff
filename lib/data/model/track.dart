
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';

part 'track.freezed.dart';

@freezed
class Track with _$Track {

  factory Track ({
    String? id,
    String? name,
    String? previewUrl,
    String? type,
    String? uri,
    int? trackNumber,
    bool? isLocal,
    bool? explicit,
    List<Artist>? artists,
    Album? album,
}) = _Track;

}