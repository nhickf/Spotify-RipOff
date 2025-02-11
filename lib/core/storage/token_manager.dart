import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:spotify/constant/constant.dart';

class TokenManager {
  late FlutterSecureStorage _storage;
  String? _accessToken;

  TokenManager(FlutterSecureStorage storage) {
    _storage = storage;
  }

  String? get accessToken => _accessToken;

  Future<bool> accessKeyExist() async {
    try {
      String? refreshToken = await _storage.read(key: tokenKey);
      return refreshToken != null;
    } catch (e) {
      // handle case where refreshToken retrieving throws error.
      return false;
    }
  }

  Future<void> setTokens(String key,{String? value}) async {
    _accessToken = accessToken;
    if (value != null) {
      await _storage.write(key: tokenKey, value: value);
    }
  }

  Future<String?> getAccessToken() async {
    try {
      return await _storage.read(key: tokenKey);
    } catch (e) {
      // handle case where refresh token retrieving throws error
      return null;
    }
  }
}
