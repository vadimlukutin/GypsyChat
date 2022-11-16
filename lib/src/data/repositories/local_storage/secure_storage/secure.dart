import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final storage = const FlutterSecureStorage();

  final _tokenKey = 'token';

  SecureStorage();

  Future<String> get token async {
    final token = await storage.read(key: _tokenKey) ?? '';

    return token;
  }

  Future<String?> get bearerToken async {
    final token = await storage.read(key: _tokenKey);

    if (token == null) {
      return null;
    }

    return 'Bearer $token';
  }

  Future<void> writeToken(String value) async {
    await storage.write(key: _tokenKey, value: value);
  }

  Future<void> deleteToken() async {
    await storage.delete(key: _tokenKey);
  }

  Future<void> clean() async {
    await storage.deleteAll();
  }
}
