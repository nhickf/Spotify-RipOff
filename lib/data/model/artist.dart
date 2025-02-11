
import 'package:freezed_annotation/freezed_annotation.dart';
part 'artist.freezed.dart';

@freezed
class Artist with _$Artist {

  factory Artist({
    String? id,
    String? name,
    String? type,
    String? uri,
    String? image,
}) = _Artist;

}