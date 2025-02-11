import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/model/page.dart';
import 'package:spotify/data/model/track.dart';
part 'album.freezed.dart';


@freezed
class Album with _$Album {
  factory Album({
    String? id,
    String? image,
    String? label,
    String? uri,
    Page<Track>? tracks,
    int? totalTracks,
  }) = _Album;
}
