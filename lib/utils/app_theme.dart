import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
   static ThemeData lightTheme() {
    const brightness = Brightness.light;
    final colorScheme = ColorScheme.fromSwatch(
      backgroundColor: AppColors.white,
      brightness: brightness,
      primarySwatch: 
      Colors.grey,
    ).copyWith(
      secondary: AppColors.greylight,
      surface: AppColors.white,
      primary: AppColors.orange,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: _textTheme(AppColors.navy),
    );
  }

 static ThemeData darkTheme() {
    const brightness = Brightness.dark;
    final colorScheme = ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      brightness: brightness,
    ).copyWith(
      secondary: AppColors.grey,
      surface: AppColors.black,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: _textTheme(AppColors.white),
    );
  }
  static TextTheme _textTheme(Color textColor) {
    return TextTheme(
      bodyLarge: GoogleFonts.montserratAlternates(
        textStyle: TextStyle(
          fontSize: 18,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyMedium: GoogleFonts.montserratAlternates(
        textStyle: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
      ),
      titleLarge: GoogleFonts.montserratAlternates(
        textStyle: TextStyle(
          fontSize: 20,
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // ignore: unused_element
  static InputDecorationTheme _inputDecorationTheme(Color fillColor) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red),
      ),
    );
  }
}
