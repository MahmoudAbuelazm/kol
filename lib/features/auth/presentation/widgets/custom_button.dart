import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';

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
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: ColorPalette.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onTap,
        child: SizedBox(
          width: 300.h,
          height: 60.h,
          child: Center(
            child: Text(
              text,
              style: TextStyles().montserrat400_13.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
