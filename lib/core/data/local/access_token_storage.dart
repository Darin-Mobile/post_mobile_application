import 'package:get_storage/get_storage.dart';

class AccessTokenStorage {
  static final _storage = GetStorage();

  static const String _accessToken = "ACCESS_TOKEN";
  static const String _refreshToken = "REFRESH_TOKEN";

  static void setAccessToken(String token) =>
      _storage.write(_accessToken, token);

  static String getAccessToken() =>
      _storage.read(_accessToken) ?? "";

  static void setRefreshToken(String refresh) =>
      _storage.write(_refreshToken, refresh);

  static String getRefreshToken() =>
      _storage.read(_refreshToken) ?? "";

  static Future<void> clearTokens() async {
    await _storage.remove(_accessToken);
    await _storage.remove(_refreshToken);
  }
}