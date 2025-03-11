import 'package:flutter/material.dart';

final primaryColor = Color(0xFF48B0AB);
final themeData = ThemeData(
  dividerTheme: DividerThemeData(color: Colors.grey.withOpacity(1)),
  scaffoldBackgroundColor: Color(0xffF2EDED),
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  primaryColor: primaryColor,
  cardColor: primaryColor.withOpacity(0.6),
  useMaterial3: true,
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),

    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'Poppins',
    ),

    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
    ),
  ),
);
