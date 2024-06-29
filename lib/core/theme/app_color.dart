import 'package:flutter/material.dart';

class AppColors {
  static const Color bgColor = Color(0xff11071F);
  static const Color purple = Color(0xffA362FF);
  static const Color purpleDark = Color(0xff2C1250);
  static const Color navBarColor = Color(0xff1A0B2E);
  static const Color violet = Color(0xff251C31);
}

class AppDarkThemeColor {
  const AppDarkThemeColor._();

  static const bgColor = Color(0xFF18172B);
  static const primary = Color(0xFF1F1F30);
  static const accent = Color(0xFFFD8629);
  static const yellow = Color(0xFFFFBA49);
  static const error = Color(0xFFDC3545);
  static const success = Color(0xFF08A158);
  static const info = Color(0xFF17A2B8);
  static const warning = Color(0xFFFFc107);
  static const hyperlink = Color(0xFF0074CC);
  static const menu = Colors.white;
  static const menuCard = AppColors.purpleDark;
  static const whiteText = Colors.white;
}

class AppLightThemeColor {
  const AppLightThemeColor._();

  static const primary = Color(0xFFFFFFFF);
  static const bgColor = Color(0xFFf3f6fa);
  static const menu = AppColors.navBarColor;
  static const accent = Color(0xFFFD8629);
  static const yellow = Color(0xFFFFBA49);
  static const error = Color(0xFFDC3545);
  static const success = Color(0xFF08A158);
  static const info = Color(0xFF17A2B8);
  static const warning = Color(0xFFFFc107);
  static const hyperlink = Color(0xFF0074CC);
}
