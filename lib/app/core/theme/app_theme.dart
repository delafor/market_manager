import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xffF2F3F2),
      hintStyle: const TextStyle(color: const Color(0xff7C7C7C)),
      prefixIconColor: const Color(0xff181B19),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff53B175),
      foregroundColor: Colors.white,
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 12, color: Colors.black87),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: const Color(0xff4caf50),
      unselectedItemColor: Color.fromARGB(255, 0, 0, 0),

      selectedIconTheme: const IconThemeData(size: 30),

      unselectedIconTheme: const IconThemeData(size: 24),

      selectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

const BoxDecoration imageContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(20)),
  boxShadow: [
    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4)),
  ],
);
