import 'package:flutter/material.dart';
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
  TextStyle get montserrat400_13 => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        fontFamily: 'Montserrat',
      );
  TextStyle get montserrat700_50 => const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 50,
        fontFamily: 'Montserrat',
      );
  TextStyle get nunitoSans300_15 => const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 15,
        fontFamily: 'NunitoSans',
        color: ColorPalette.deepGrey,
      );
       TextStyle get poppins500_13 => const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13,
        fontFamily: 'Poppins',
        color: ColorPalette.deepGrey,
      );
}
