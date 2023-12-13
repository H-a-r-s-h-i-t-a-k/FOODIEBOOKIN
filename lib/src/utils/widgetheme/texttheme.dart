import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ttextTheme {
  static TextTheme ltexttheme = TextTheme(
    titleSmall: GoogleFonts.poppins(color: Color.fromARGB(208, 49, 29, 8)),
    labelSmall: GoogleFonts.poppins(color: Colors.black54),
    labelMedium: GoogleFonts.poppins(color: Color.fromARGB(255, 3, 42, 31)),
    headlineSmall:
        GoogleFonts.montserrat(color: Color.fromARGB(221, 49, 23, 12)),
    headlineLarge: GoogleFonts.montserrat(color: Colors.black87),
    headlineMedium: GoogleFonts.poppins(
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.montserrat(
        color: Colors.black87, fontWeight: FontWeight.bold),
  );
  static TextTheme dtexttheme = TextTheme(
    headlineMedium: GoogleFonts.poppins(
      color: const Color.fromARGB(221, 255, 255, 255),
    ),
    displayMedium:
        GoogleFonts.montserrat(color: const Color.fromARGB(221, 253, 252, 252)),
    titleSmall:
        GoogleFonts.poppins(color: const Color.fromARGB(255, 255, 255, 255)),
    headlineSmall:
        GoogleFonts.montserrat(color: Color.fromARGB(239, 255, 255, 255)),
  );
}
