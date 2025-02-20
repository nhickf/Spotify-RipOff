import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';

@freezed
class Favorite with _$Favorite {
  factory Favorite({
    @Default("") String id,
    @Default("") String name,
    @Default("") String imageUrl,
    @Default("") String timeStamp,
  }) = _Favorite;
}
