import 'package:flutter/material.dart';
import 'package:kol/resources/styles/text_styles.dart';

import '../../../../resources/colors/color_palette.dart';

class CustomAddCardTextField extends StatelessWidget {
  final String? hintText;
  const CustomAddCardTextField({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5),
        fillColor: ColorPalette.textField,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        hintStyle: TextStyles.raleway700_12.copyWith(
          color: ColorPalette.grey,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
