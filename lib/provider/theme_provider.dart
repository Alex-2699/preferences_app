import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData currentTheme;

  Themeprovider({
    required bool isDarkMode
  }): currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  setLightMode(){
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode(){
    currentTheme = ThemeData.dark();
    notifyListeners();
  }

}