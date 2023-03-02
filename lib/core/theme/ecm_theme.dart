import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/core/constants/ecm_dimensions.dart';
import 'package:flutter/material.dart';

class EcmThemeManager{


  static ThemeData lightTheme = _themeData(_lightScheme);
  static String get _fontFamily => 'SecularOne';
  static ThemeData darkTheme = _themeData(_darkTheme);

  
  static final ColorScheme _lightScheme = const ColorScheme.light().copyWith(
     primary: EcmColors.primaryColor,
     secondary: EcmColors.secondaryColor,
     error: EcmColors.red,
     background: EcmColors.lightBackgroundColor,
     inverseSurface: EcmColors.secondaryColor.shade400,
     surface: EcmColors.secondaryTextColor,
     onSurface: EcmColors.containerTextColor,
     onBackground: EcmColors.green,
     onTertiary: EcmColors.grey.shade900,
     brightness: Brightness.light
  );
  static final ColorScheme _darkTheme = const ColorScheme.dark().copyWith(
    primary: EcmColors.primaryColor,
     secondary: EcmColors.secondaryColor,
     error: EcmColors.red,
     background: EcmColors.lightBackgroundColor,
     inverseSurface: EcmColors.secondaryColor.shade400,
     surface: EcmColors.lightBackgroundColor,
     onSurface: EcmColors.containerTextColor,
     onBackground: EcmColors.green,
     onTertiary: EcmColors.infoColor,
     brightness: Brightness.dark
  );

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
    scaffoldBackgroundColor: colorScheme.background,
     colorScheme: colorScheme,
      textTheme: _textTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      fontFamily: _fontFamily,
      appBarTheme: _appBarTheme(colorScheme),
      disabledColor: colorScheme.inverseSurface,
      brightness: colorScheme.brightness,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
  ));

  static TextTheme _textTheme(ColorScheme colorScheme) =>  TextTheme(
     displayLarge: TextStyle(
          fontSize: EcmDimensions.xxxLarge,
          color: colorScheme.surface,
          fontWeight: FontWeight.w600,
          
     ),
     displayMedium: TextStyle(
      fontSize: EcmDimensions.xxLarge,
          color: colorScheme.surface,
          fontWeight: FontWeight.w600,
     ),
     displaySmall: TextStyle(
      fontSize: EcmDimensions.large,
      color: colorScheme.surface
     ),
      headlineMedium: TextStyle(
          fontSize: 40,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 32,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 28,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          color: colorScheme.surface,
          
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 20,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 16,
          color: colorScheme.surface,
          fontWeight: FontWeight.w500,
        ),
      );
  


   static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        iconTheme: _iconTheme(colorScheme),
        actionsIconTheme: _iconTheme(colorScheme),
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onSurface,
      );
}