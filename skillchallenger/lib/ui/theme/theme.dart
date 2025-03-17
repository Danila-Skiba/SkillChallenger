import 'package:flutter/material.dart';

final primaryColor = Color(0xFF48B0AB);
final primaryColorDark = Color(0xFF128181);
final themeData = ThemeData(
  dividerTheme: DividerThemeData(color: Colors.grey.withValues(alpha: 1)),
  scaffoldBackgroundColor: Color(0xffF2EDED),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  hintColor: Color(0xFF979797),
  cardColor: primaryColor.withValues(alpha: 0.6),
  useMaterial3: true,
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),

    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: "Poppins",
    ),

    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Poppins',
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),

    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),

    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    ),
  ),
);
