import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/Core/style/colors/app_color.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.black,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.lato(
        fontWeight: FontWeight.w700,
        color: AppColor.white,
        fontSize: 40,
      ),
      displayLarge: GoogleFonts.lato(
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      displayMedium: GoogleFonts.lato(
        color: AppColor.white,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
      displaySmall: GoogleFonts.lato(
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}
