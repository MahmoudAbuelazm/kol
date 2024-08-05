import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kol/resources/colors/color_palette.dart';

class TextStyles {
  TextStyle get logo => TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 80,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: <Color>[
            ColorPalette.blue,
            ColorPalette.primary,
            ColorPalette.pink,
          ],
        ).createShader(const Rect.fromLTWH(110.0, 70.0, 200.0, 70.0)));
  TextStyle get montserrat400_13 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      );
  TextStyle get montserrat700_50 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 50.sp,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      );
  TextStyle get nunitoSans300_15 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 15.sp,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
        color: ColorPalette.deepGrey,
      );
  TextStyle get poppins500_13 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13.sp,
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: ColorPalette.deepGrey,
      );
}
