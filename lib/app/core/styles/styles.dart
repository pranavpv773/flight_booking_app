import 'package:flight_booking_app/app/core/styles/colors.dart';
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
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  TextStyle colorChange(Color colors) {
    return TextStyle(
      fontFamily: fontFamily,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static TextStyle headings = TextStyle(
    color: AppColor.kBlack,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontFamily: GoogleFonts.radley().fontFamily,
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
    fontSize: 12,
    color: AppColor.kGrey,
    fontWeight: FontWeight.w500,
  );

  static TextStyle buttonText = TextStyle(
      fontFamily: GoogleFonts.abel().fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      letterSpacing: 2);

  static TextStyle numStyle = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.notoSansSymbols().fontFamily,
    fontWeight: FontWeight.bold,
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
