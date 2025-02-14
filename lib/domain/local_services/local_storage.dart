import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/app_logger.dart';

class LocalStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<bool> setValue(String key, String value) async {
    await storage.write(key: key, value: value);
    CustomLogger.logMessage(msg: "TOKEN SAVED", level: LogLevel.info);
    return true;
  }

  Future<String?> readValue(String key) async {
    CustomLogger.logMessage(msg: "TOKEN READ", level: LogLevel.info);

    return await storage.read(key: key);
  }

  Future<bool> clearValue(String key) async {
    await storage.delete(key: key);
    return true;
  }

  /// Save user model in secure storage
  // Future<void> saveUser(LoginModel user) async {
  //   String userJson = jsonEncode(user.toJson());
  //   await storage.write(key: 'user_data', value: userJson);
  // }

  /// Retrieve user model from secure storage
  // Future<LoginModel?> getUser() async {
  //   String? userJson = await storage.read(key: 'user_data');
  //   if (userJson != null) {
  //     return LoginModel.fromJson(jsonDecode(userJson));
  //   }
  //   return null;
  // }
}