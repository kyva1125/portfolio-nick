import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

TextStyle headerTextStyle({Color color = Colors.white}) {
  return GoogleFonts.signikaNegative(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextStyle montserratStyle({required Color color}) {
  return GoogleFonts.montserrat(
    color: color,
    fontWeight: FontWeight.w800,
    fontSize: 16.sp,
  );
}

TextStyle headingStyles({Color color = Colors.white}) {
  return GoogleFonts.rubikMoonrocks(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: color,
    letterSpacing: 2,
  );
}

TextStyle normalStyle({Color color = Colors.white, int size = 14}) {
  return TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: size.sp,
    color: color,
    letterSpacing: 1.7,
    height: 1.5,
  );
}

TextStyle comfortaaStyle() {
  return GoogleFonts.comfortaa(
      fontSize: 14.sp, fontWeight: FontWeight.w800, color: Colors.grey);
}
