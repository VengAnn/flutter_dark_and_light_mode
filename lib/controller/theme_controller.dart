// ignore_for_file: override_on_non_overriding_member, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemsController extends GetxController {
  bool isDarkMode = false;
  late SharedPreferences sharedPreferences;

  Future<void> toggleTheme() async {
    isDarkMode = !isDarkMode;
    update();
    await saveThemeMode();
  }

  Future<void> saveThemeMode() async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("isDarkMode", isDarkMode);
  }

  Future<void> loadThemeMode() async {
    try {
      sharedPreferences = await SharedPreferences.getInstance();
      bool storedIsDarkMode = sharedPreferences.getBool('isDarkMode')!;
      isDarkMode = storedIsDarkMode;
      update(); // Trigger UI update after loading the theme mode
    } catch (e) {
      print('Error loading theme mode: $e');
    }
  }
}
