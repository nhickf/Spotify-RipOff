import 'package:freezed_annotation/freezed_annotation.dart';
part 'image.freezed.dart';


@freezed
class Image with _$Image {
  factory Image({
    String? url,
    int? height,
    int? width,
  }) = _Image;
}