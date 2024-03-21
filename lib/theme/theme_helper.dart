import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/utils/pref_utils.dart';
import 'package:prince_s_application9/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blue50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.purple300.withOpacity(0.2),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray600,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF020202),
    primaryContainer: Color(0XFF201A1A),
    secondaryContainer: Color(0X3F000000),

    // On colors(text colors)
    onPrimary: Color(0XFF333333),
    onPrimaryContainer: Color(0X87B1B1B1),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF060505);

  // Blue
  Color get blue50 => Color(0XFFD5E5FF);
  Color get blue900 => Color(0XFF1934C1);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);

  // Gray
  Color get gray200 => Color(0XFFECE8E8);
  Color get gray500 => Color(0XFF979797);
  Color get gray600 => Color(0XFF757575);
  Color get gray700 => Color(0XFF676060);

  // Indigo
  Color get indigoA400 => Color(0XFF3A5AFE);
  Color get indigoA700 => Color(0XFF344BFD);
  Color get indigoA70001 => Color(0XFF314CFF);

  // Purple
  Color get purple300 => Color(0XFFBB6BD9);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
