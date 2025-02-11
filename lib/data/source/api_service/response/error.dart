import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.g.dart';
part 'error.freezed.dart';

@freezed
class Error with _$Error {

  factory Error ({
   required String? message,
   required int? status
  }) = _Error;


  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

}