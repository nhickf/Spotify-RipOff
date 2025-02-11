import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:spotify/constant/constant.dart';
import 'package:spotify/core/network/interceptor.dart';
import 'package:spotify/core/network/network.dart';
import 'package:spotify/core/storage/token_manager.dart';

void networkDependencies(GetIt di) {
  di.registerLazySingleton<Dio>(instanceName: tokenClientInstanceKey, () {
    return Dio(
      BaseOptions(
          baseUrl: tokenBaseUrl,
          headers: {
            "Authorization": "Basic "
                "${base64Encode(utf8.encode("bb2487c74afe43629a5248dcde7de6d1:6f0f5a8f1db5437486c9a3e6fb70af08"))}"
          },
          contentType: "application/x-www-form-urlencoded"),
    );
  });

  di.registerLazySingleton<Dio>(instanceName: baseClientInstanceKey, () {
    var client = Dio(BaseOptions(baseUrl: baseUrl));

    client.interceptors.addAll({
      LogInterceptor(
        logPrint: print,
        requestBody: true,
        responseHeader: true,
        requestHeader: true,
        responseBody: true,
      ),
      AuthInterceptor(
        di.get<Dio>(instanceName: tokenClientInstanceKey),
        TokenManager(di.get<FlutterSecureStorage>()),
      )
    });

    return client;
  });

  di.registerLazySingleton<NetworkSource>(() {
    return NetworkSource(
        baseClient: di.get<Dio>(instanceName: tokenClientInstanceKey),
        tokenClient: di.get<Dio>(instanceName: baseClientInstanceKey));
  });
}
