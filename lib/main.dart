import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_app_design/screen/greetings_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          colorScheme:const ColorScheme(
              primary: Color(0xff136B55),
              background: Color(0xffF5FBF6),
              brightness: Brightness.light,
              onPrimary: Colors.white,
              error: Color(0xffBA1A1A),
              secondary: Color(0xff4B635A),
              onBackground: Color(0xff171D1A),
              onError: Color(0xffffffff),
              onSecondary: Colors.white,
              onSurface: Color(0xff171D1A),
              surface: Color(0xffF5FBF6),
              ),
              
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.poppins(
              color: const Color(
                0xFF4B635A,
              ),
              fontSize: 20,
            ),
            bodyMedium: GoogleFonts.poppins(
              color: const Color(
                0xFF4B635A,
              ),
              fontSize: 16,
            ),
            headlineMedium: GoogleFonts.poppins(
              color: const Color(
                0xFF136B55,
              ),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Color(0xff136B55),
              textStyle: GoogleFonts.poppins(),
            ),
          ),
          iconTheme: IconThemeData(
            color: const Color(
              0xFF4B635A,
            ),
          )),
      home: GreetingsScreen(),
    ),
  );
}
