import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dark_mode_ligth_mode/controller/theme_controller.dart';
import 'package:getx_dark_mode_ligth_mode/page/Main_page.dart';
import 'package:getx_dark_mode_ligth_mode/theme/custom_Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemsController _themsController = Get.put(ThemsController());
    _themsController.loadThemeMode(); // Load theme mode before creating the app

    return GetBuilder<ThemsController>(
      builder: (themsController) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(), //set initail light theme mode
          darkTheme: ThemeData.dark(), // Set initial dark theme
          // theme: CustomThemes.lightTheme,
          // darkTheme: CustomThemes.darkTheme,
          themeMode:
              themsController.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const MyMainPage(),
        );
      },
    );
  }
}
