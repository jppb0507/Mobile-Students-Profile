import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData ravenTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF4B0082),
      brightness: Brightness.dark,
      secondary: Color(0xFF8B5CF6),
    ),

    scaffoldBackgroundColor: Color(0xFF1C1A25),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.white70,
      ),
    ),
  );
}
