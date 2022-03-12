import 'package:flutter/material.dart';

/// Application theme, style, colors settings
class AppTheme {
  static const Color colorFirm = Color(0xFF8D6CEA);
  static const Color colorDeepBlack = Color(0xFF181818);
  static const Color colorBlackMatte = Color(0xFF343434);
  static const Color colorBrightWhite = Colors.white;
  static const Color colorGreyMiddle = Color(0xFF999999);
  static const Color colorGreyDeep = Color(0xFF525252);

  static final _baseTheme = ThemeData.dark();
  static final ThemeData theme = _baseTheme.copyWith(
    primaryColor: AppTheme.colorFirm,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppTheme.colorFirm,
      secondary: AppTheme.colorFirm,
    ),
    backgroundColor: AppTheme.colorBlackMatte,
    scaffoldBackgroundColor: AppTheme.colorBlackMatte,
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppTheme.colorFirm,
    ),
    bottomNavigationBarTheme: _baseTheme.bottomNavigationBarTheme.copyWith(
      selectedItemColor: AppTheme.colorFirm,
      unselectedItemColor: AppTheme.colorBrightWhite,
      backgroundColor: AppTheme.colorDeepBlack,
    ),
    appBarTheme: _baseTheme.appBarTheme.copyWith(
      backgroundColor: const Color(0xFF181818),
      toolbarTextStyle: const TextStyle(
        color: AppTheme.colorBrightWhite,
      ),
    ),
    progressIndicatorTheme: _baseTheme.progressIndicatorTheme.copyWith(
      color: AppTheme.colorFirm,
    ),
    textSelectionTheme: _baseTheme.textSelectionTheme.copyWith(
      cursorColor: AppTheme.colorFirm,
    ),
  );
}
