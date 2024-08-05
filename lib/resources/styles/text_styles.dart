import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';

class TextStyles {
  TextStyle get logo => TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 80,
      fontFamily: 'Montserrat',
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
        fontFamily: 'Montserrat',
      );
  TextStyle get montserrat700_50 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 50.sp,
        fontFamily: 'Montserrat',
      );
  TextStyle get montserrat700_16 => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
        fontFamily: 'Montserrat',
        color: ColorPalette.primary,
      );
  TextStyle get montserrat300_19 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 19.sp,
        fontFamily: 'Montserrat',
        color: Colors.black,
      );
  TextStyle get nunitoSans300_15 => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 15.sp,
        fontFamily: 'NunitoSans',
        color: ColorPalette.deepGrey,
      );
  TextStyle get poppins500_13 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13.sp,
        fontFamily: 'Poppins',
        color: ColorPalette.deepGrey,
      );
}
