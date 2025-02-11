import 'package:dio/dio.dart';

class NetworkSource {
  final Dio baseClient;
  final Dio tokenClient;

  NetworkSource({required this.baseClient, required this.tokenClient});
}
