import 'package:in.laundrydrop.app/core/theme/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<String> getThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('theme') ?? MyAppThemeMode.system;
  }

  static Future<void> setThemePreference(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', value);
  }
}
