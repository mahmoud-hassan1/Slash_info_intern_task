import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
abstract class FontStyles{
 static final TextStyle kLargeTextStyle =GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w600,
  fontSize: 25,
 ) ;
  static final TextStyle kMediumTextStyle =GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 22,
 ) ;
  static final TextStyle kSmallTextStyle =GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 16,
 ) ;
}