
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restriction.g.dart';
part 'restriction.freezed.dart';

@freezed
class Restriction with _$Restriction {

  factory Restriction({
   String? reason
   }) = _Restriction;

  factory Restriction.fromJson(Map<String, dynamic> json) =>
      _$RestrictionFromJson(json);

}