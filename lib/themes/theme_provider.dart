
import 'package:flutter/material.dart';
import 'package:food_delivery/themes/dark_mode.dart';
import 'package:food_delivery/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themedata => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set themedata(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }
  void toogleTheme() {
    if (_themeData == lightMode) {
      themedata = darkMode;
    } else {
      themedata = lightMode;
    }
  }

  
}