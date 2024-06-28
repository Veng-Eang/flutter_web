import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/dimens.dart';
import 'package:portfolio/core/theme/app_text.dart';
import 'package:portfolio/core/theme/extensions/app_side_bar_theme.dart';

import 'app_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey.shade400,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      selectedLabelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      unselectedLabelStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static ThemeData darkThemeOldVersion() {
    final ThemeData themeData = ThemeData(
      fontFamily: 'Preah',
      brightness: Brightness.dark,
      primaryColor: AppColors.purple,
      scaffoldBackgroundColor: AppColors.bgColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.navBarColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        selectedLabelStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
    // final appSidebarTheme = AppSideBarTheme(
    // backgroundColor: ,
    // sidebarWidth: 304.0,
    // sidebarLeftPadding: kDefaultPadding,
    // sidebarTopPadding: kDefaultPadding,
    // sidebarRightPadding: kDefaultPadding,
    // sidebarBottomPadding: kDefaultPadding,
    // );
    return themeData.copyWith(extensions: [
      // appSidebarTheme,
    ]);
  }

  static ThemeData darkTheme() {
    final ThemeData themeData = ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppDarkThemeColor.bgColor,
        ),
        scaffoldBackgroundColor: AppDarkThemeColor.bgColor,
        primaryColor: AppDarkThemeColor.primary,

        // Draw Theme ======================================================
        drawerTheme: DrawerThemeData(
          backgroundColor: AppDarkThemeColor.bgColor,
          scrimColor: AppDarkThemeColor.primary.withOpacity(0.6),
          elevation: 10.0,
          width: 280,
          shadowColor: AppColors.purple,
        ),

        // Text Theme ======================================================
        textTheme: TextTheme(
          titleLarge: h8.copyWith(
            color: AppDarkThemeColor.accent,
          ),
        ));
    final appSidebarTheme = AppSideBarTheme(
      backgroundColor: AppDarkThemeColor.bgColor,
      foregroundColor: AppDarkThemeColor.primary,
      menuColor: AppDarkThemeColor.menu,
      sidebarWidth: 304.0,
      sidebarLeftPadding: kDefaultPadding,
      sidebarTopPadding: kDefaultPadding,
      sidebarRightPadding: kDefaultPadding,
      sidebarBottomPadding: kDefaultPadding,
      menuBorderRadius: 5.0,
      menuFontSize: 14.0,
      menuSelectedFontColor: AppDarkThemeColor.accent,
      menuCardColor: AppDarkThemeColor.menuCard,
      headerFontColor: AppColors.purple,
    );

    return themeData.copyWith(extensions: [
      appSidebarTheme,
    ]);
  }
}
