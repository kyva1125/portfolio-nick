import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';



TextStyle headerTextStyle({Color color = Colors.white}) {
  return GoogleFonts.signikaNegative(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextStyle montserratStyle({required Color color}) {
  return GoogleFonts.montserrat(
    color: color,
    fontWeight: FontWeight.w800,
    fontSize: 4.sw,
  );
}

TextStyle headingStyles({Color color = Colors.white}) {
  return GoogleFonts.rubikMoonrocks(
    fontSize: 5.sw,
    fontWeight: FontWeight.bold,
    color: color,
    letterSpacing: 2,
  );
}

TextStyle normalStyle({Color color = Colors.white}) {
  return TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 3.sw,
    color: color,
    letterSpacing: 1.7,
    height: 1.5,
  );
}

TextStyle comfortaaStyle() {
  return GoogleFonts.comfortaa(
      fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
}
