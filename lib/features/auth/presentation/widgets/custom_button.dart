import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/Local/app_localizations.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({
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
          borderRadius: BorderRadius.circular(15.r),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onTap,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
          child: Text(text.tr(context),
              style: TextStyles.montserrat400_13.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
