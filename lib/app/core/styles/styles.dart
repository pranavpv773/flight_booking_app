import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static String? fontFamily = GoogleFonts.breeSerif().fontFamily;

  static TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    letterSpacing: 1.5,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    letterSpacing: 1,
    fontWeight: FontWeight.w300,
    fontSize: 35,
  );

  static TextStyle h3 = TextStyle(
    fontFamily: fontFamily,
    color: Colors.grey,
    fontSize: 16,
  );

  static TextStyle h4 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );

  static TextStyle h5 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle buttonText = TextStyle(
      fontFamily: GoogleFonts.abel().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      letterSpacing: 2);

  static TextStyle bodySm = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
  );

  static TextStyle bodyLg = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );

  static TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
  );
}
