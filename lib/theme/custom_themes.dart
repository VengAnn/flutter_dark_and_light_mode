import 'package:flutter/material.dart';

class CustomThemes {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    // ignore: deprecated_member_use
    backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: Colors.white54,
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    // ignore: deprecated_member_use
    backgroundColor: const Color(0xFF212121),
    dividerColor: Colors.black12,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(secondary: Colors.white),
  );
}
