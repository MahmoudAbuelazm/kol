import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kol/resources/colors/color_palette.dart';

class TextStyles {
  TextStyle get logo => TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 80,
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: <Color>[
            ColorPalette.blue,
            ColorPalette.primary,
            ColorPalette.pink,
          ],
        ).createShader(const Rect.fromLTWH(110.0, 70.0, 200.0, 70.0)));

  static TextStyle get montserrat400_13 =>  GoogleFonts.montserrat(
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
        color: ColorPalette.deepGrey,
      );

  static TextStyle get montserrat700_50 => GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 50.sp,
        color: ColorPalette.deepGrey,
      );
  TextStyle get montserrat700_16 =>  GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
        color: ColorPalette.primary,
      );
  TextStyle get montserrat300_19 =>  GoogleFonts.montserrat(
        fontWeight: FontWeight.w300,
        fontSize: 19.sp,
        color: Colors.black,
      );
  TextStyle get nunitoSans300_15 =>  GoogleFonts.nunitoSans(
        fontWeight: FontWeight.w300,
        fontSize: 15.sp,
        color: ColorPalette.deepGrey,
      );

  TextStyle get poppins500_13 => GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 13.sp,
        color: ColorPalette.deepGrey,
      );
  static TextStyle get raleway700_12 => GoogleFonts.raleway(
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
        color: ColorPalette.deepGrey,
      );
}
