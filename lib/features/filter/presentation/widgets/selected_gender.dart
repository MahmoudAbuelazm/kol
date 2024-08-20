
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/services/Local/app_localizations.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({
    super.key,
  });

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = 0;
            });
          },
          child: Container(
            width: 70.w,
            height: 25.h,
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectedindex == 0
                      ? ColorPalette.darkpink
                      : ColorPalette.lightred),
              color: ColorPalette.lightred,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "male".tr(context),
                textAlign: TextAlign.center,
                style: TextStyles.raleway700_12.copyWith(
                    fontSize: selectedindex == 0 ? 13.sp : 14.sp,
                    fontWeight: FontWeight.w500,
                    color: selectedindex == 0
                        ? ColorPalette.darkpink
                        : ColorPalette.black),
              ),
            ),
          ),
        ),
        5.horizontalSpace,
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = 1;
            });
          },
          child: Container(
            width: 70.w,
            height: 25.h,
            decoration: BoxDecoration(
              border: Border.all(
                  color: selectedindex == 1
                      ? ColorPalette.darkpink
                      : ColorPalette.lightred),
              color: ColorPalette.lightred,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "female".tr(context),
                textAlign: TextAlign.center,
                style: TextStyles.raleway700_12.copyWith(
                    fontSize: selectedindex == 1 ? 13.sp : 14.sp,
                    fontWeight: FontWeight.w500,
                    color: selectedindex == 1
                        ? ColorPalette.darkpink
                        : ColorPalette.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}