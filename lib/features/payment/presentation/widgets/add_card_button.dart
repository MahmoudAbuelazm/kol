import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class AddCardButton extends StatelessWidget {
  final void Function() onPressed;

  const AddCardButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all<Size>(Size(280.w, 40.h)),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: ColorPalette.primary,
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(ColorPalette.primary),
              ),
              onPressed: onPressed,
              child: Text("Pay  \$ 150",
                  style: TextStyles.montserrat400_13
                      .copyWith(fontSize: 16.sp, color: ColorPalette.white))),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
