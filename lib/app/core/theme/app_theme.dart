import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xffF2F3F2),
      hintStyle: const TextStyle(
        color: Color(0xff7C7C7C),
        fontWeight: FontWeight.w600,
      ),
      prefixIconColor: const Color(0xff181B19),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide.none,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xfef53B175),
      foregroundColor: Colors.white,
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Color.fromARGB(255, 197, 195, 195), width: 1),
      ),
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.only(right: 16),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xff181b19),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xff181819),
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xff7c7c7c),
      ),
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
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xff53B175),
        textStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xff53B175),
        foregroundColor: Colors.white,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
    ),
  );
}

const BoxDecoration imageContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(13)),
  boxShadow: [
    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4)),
  ],
);

const BoxDecoration groceriesContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(13)),
  boxShadow: [
    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4)),
  ],
);
