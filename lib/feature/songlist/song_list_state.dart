
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/model/track.dart';

part 'song_list_state.freezed.dart';



@freezed
class SongListState with _$SongListState {

  factory SongListState({
    @Default("") String title,
    @Default("") String description,
    @Default("") String coverImage,
    List<Favorite>? favorites,
    List<Track>? tracks,
    String? error,
    @Default(true) bool isLoading,
}) = _SongListState;

}
