import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SmallButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: ColorPalette.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(text,
              style: TextStyles.montserrat400_13.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
