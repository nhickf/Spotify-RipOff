import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify/constant/constant.dart';
import 'package:spotify/core/storage/token_manager.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio _tokenClient;
  final TokenManager _tokenManager;

  AuthInterceptor(this._tokenClient,this._tokenManager);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401) {
      super.onError(err, handler);
      return;
    }

    await _handleUnAuthorizeAccess(err, handler);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = _tokenManager.accessToken;

    if (accessToken == null) {
      try {
        var response = await _tokenClient.post("/api/token", data: {
          "grant_type": "client_credentials",
        });

        _tokenManager.setTokens(tokenKey,
            value: response.data["access_token"].toString());

        accessToken = response.data["access_token"].toString();
      } on DioException catch (e) {
        debugPrintStack(stackTrace: e.stackTrace);
      }
    }

    options.headers.addAll({
      "Authorization": "Bearer $accessToken",
    });

    handler.next(options);
  }

  Future<void> _handleUnAuthorizeAccess(
      DioException error, ErrorInterceptorHandler handler) async {
    try {
      var response = await _tokenClient.post("/api/token", data: {
        "grant_type": "client_credentials",
      });
      _tokenManager.setTokens(tokenKey,
          value: response.data["access_token"].toString());

      return;
    } on DioException catch (e) {
      debugPrintStack(stackTrace: e.stackTrace);
    }
  }
}
