import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepository {

  SharedPreferences _sharedPreferences = Get.find();

  Future<bool> setBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  Future<bool> setInt(String key, int value) {
    return _sharedPreferences.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) {
    return _sharedPreferences.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  Future<bool> setStringList(String key, List<String> value) {
    return _sharedPreferences.setStringList(key, value);
  }

  bool has(String key) {
    return _sharedPreferences.get(key) != null;
  }

  Object? get(String key) {
    return _sharedPreferences.get(key);
  }
}