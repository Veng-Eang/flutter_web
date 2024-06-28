import 'package:flutter/material.dart';

class AppSideBarTheme extends ThemeExtension<AppSideBarTheme> {
  final Color backgroundColor;
  final Color foregroundColor;
  final double sidebarWidth;
  final double sidebarLeftPadding;
  final double sidebarTopPadding;
  final double sidebarRightPadding;
  final double sidebarBottomPadding;
  final double menuBorderRadius;
  final double menuFontSize;
  final Color menuSelectedFontColor;
  final Color menuColor;
  final Color menuCardColor;
  final Color headerFontColor;

  AppSideBarTheme({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.sidebarWidth,
    required this.sidebarLeftPadding,
    required this.sidebarTopPadding,
    required this.sidebarRightPadding,
    required this.sidebarBottomPadding,
    required this.menuBorderRadius,
    required this.menuFontSize,
    required this.menuSelectedFontColor,
    required this.menuColor,
    required this.menuCardColor,
    required this.headerFontColor,
  });

  @override
  ThemeExtension<AppSideBarTheme> copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? sidebarWidth,
    double? sidebarLeftPadding,
    double? sidebarTopPadding,
    double? sidebarRightPadding,
    double? sidebarBottomPadding,
    double? menuBorderRadius,
    double? menuFontSize,
    Color? menuSelectedFontColor,
    Color? menuColor,
    Color? menuCardColor,
    Color? headerFontColor,
  }) {
    return AppSideBarTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      sidebarWidth: sidebarWidth ?? this.sidebarWidth,
      sidebarLeftPadding: sidebarLeftPadding ?? this.sidebarLeftPadding,
      sidebarTopPadding: sidebarTopPadding ?? this.sidebarTopPadding,
      sidebarRightPadding: sidebarRightPadding ?? this.sidebarRightPadding,
      sidebarBottomPadding: sidebarBottomPadding ?? this.sidebarBottomPadding,
      menuBorderRadius: menuBorderRadius ?? this.menuBorderRadius,
      menuFontSize: menuBorderRadius ?? this.menuFontSize,
      menuSelectedFontColor: menuSelectedFontColor ?? this.menuSelectedFontColor,
      menuColor: menuColor ?? this.menuColor,
      menuCardColor: menuCardColor ?? this.menuCardColor,
      headerFontColor: headerFontColor ?? this.headerFontColor,
    );
  }

  @override
  ThemeExtension<AppSideBarTheme> lerp(
      covariant ThemeExtension<AppSideBarTheme>? other, double t) {
    if (other is! AppSideBarTheme) {
      return this;
    }
    return AppSideBarTheme(
      backgroundColor: other.backgroundColor,
      foregroundColor: other.foregroundColor,
      sidebarWidth: other.sidebarWidth,
      sidebarLeftPadding: other.sidebarLeftPadding,
      sidebarTopPadding: other.sidebarTopPadding,
      sidebarRightPadding: other.sidebarRightPadding,
      sidebarBottomPadding: other.sidebarBottomPadding,
      menuBorderRadius: other.menuBorderRadius,
      menuFontSize: other.menuFontSize,
      menuSelectedFontColor: other.menuSelectedFontColor,
      menuColor: other.menuColor,
      menuCardColor: other.menuCardColor,
      headerFontColor: other.headerFontColor,
    );
  }
}
