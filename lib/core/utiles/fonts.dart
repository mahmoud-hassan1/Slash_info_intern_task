import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
abstract class FontStyles{
 static  TextStyle kLargeTextStyle (BuildContext context)=>GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w600,
  fontSize: getResponsiveFontSize(context,fontSize: 26),
 ) ;
  static  TextStyle kMediumTextStyle(BuildContext context)=>GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: getResponsiveFontSize(context,fontSize: 22),
 ) ;
  static TextStyle kSmallTextStyle (BuildContext context)=>GoogleFonts.urbanist().copyWith(
  color:  Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: getResponsiveFontSize(context,fontSize: 16),
 ) ;
 
}
double getResponsiveFontSize(context,{required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalwidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = devicePixelRatio / physicalwidth;

  double width = MediaQuery.sizeOf(context).width;
  if (width > 800) {

    return width /700;
  } else if (width > 500) {
    return width / 450;
  } else {
    return width /500 ;
  }
}