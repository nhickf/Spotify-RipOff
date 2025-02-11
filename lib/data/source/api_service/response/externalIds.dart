import 'package:freezed_annotation/freezed_annotation.dart';

part 'externalIds.g.dart';
part 'externalIds.freezed.dart';

@freezed
class ExternalIds with _$ExternalIds {
  factory ExternalIds({
    String? isrc,
    String? ean,
    String? upc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}
