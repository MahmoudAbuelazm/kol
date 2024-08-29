import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class SelectedAge extends StatefulWidget {
  const SelectedAge({
    super.key,
  });

  @override
  State<SelectedAge> createState() => _SelectedAgeState();
}

class _SelectedAgeState extends State<SelectedAge> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.red.withOpacity(.15),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              6,
              (index) => InkWell(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    shape: selectedindex == index
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                    color: selectedindex == index
                        ? ColorPalette.white
                        : Colors.transparent,
                    border: Border.all(
                      color: selectedindex == index
                          ? ColorPalette.darkpink
                          : Colors.transparent,
                    ),
                    borderRadius: selectedindex != index
                        ? BorderRadius.circular(10)
                        : null,
                  ),
                  child: Text(
                    "${index * 10}'s",
                    style: TextStyles.raleway700_12.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w800,
                      color: selectedindex == index
                          ? ColorPalette.darkpink
                          : ColorPalette.red,
                    ),
                  ),
                ),
              ),
            ),
            // Text(
            //   "10's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
            // Text(
            //   "20's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
            // Text(
            //   "30's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
            // Text(
            //   "40's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
            // Text(
            //   "50's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
            // Text(
            //   "60's",
            //   style: TextStyles.raleway700_12.copyWith(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w800,
            //       color: ColorPalette.red),
            // ),
          ],
        ),
      ),
    );
  }
}
