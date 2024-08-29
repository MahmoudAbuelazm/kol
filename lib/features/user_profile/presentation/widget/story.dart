
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104.w,
      height: 175.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: const DecorationImage(
            image: AssetImage(AppAssets.userprofile), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorPalette.lightblue2.withOpacity(.8),
            ),
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.play_arrow,
                color: ColorPalette.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
