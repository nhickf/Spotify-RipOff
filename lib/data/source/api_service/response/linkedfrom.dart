import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/source/api_service/response/external_url.dart';

part 'linkedfrom.g.dart';
part 'linkedfrom.freezed.dart';

@freezed
class LinkedFrom with _$LinkedFrom {
  factory LinkedFrom({
    String? href,
    ExternalUrl? externalUrl,
    String? id,
    String? type,
    String? uri,
  }) = _LinkedFrom;

  factory LinkedFrom.fromJson(Map<String, dynamic> json) =>
      _$LinkedFromFromJson(json);
}
