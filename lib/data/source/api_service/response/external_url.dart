import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_url.g.dart';

part 'external_url.freezed.dart';

@freezed
class ExternalUrl with _$ExternalUrl {
  factory ExternalUrl({String? spotify}) = _ExternalUrl;

  factory ExternalUrl.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlFromJson(json);
}
