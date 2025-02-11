import 'package:freezed_annotation/freezed_annotation.dart';

part 'copyrights.g.dart';
part 'copyrights.freezed.dart';

@freezed
class CopyRights with _$CopyRights {
 factory CopyRights({
    String? text,
    String? type,
  }) = _CopyRights;

  factory CopyRights.fromJson(Map<String, dynamic> json) =>
      _$CopyRightsFromJson(json);

}
