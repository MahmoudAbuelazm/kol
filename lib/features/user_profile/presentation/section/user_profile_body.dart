import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/styles/text_styles.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';
import '../../../auth/presentation/widgets/forward_button.dart';
import '../widget/story.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shape: const CircleBorder(),
                color: ColorPalette.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 26.r,
                    backgroundImage: const AssetImage(AppAssets.userprofile),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // AppRouter.goRouter.pushNamed(AppRoute.editProfile.name);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: ColorPalette.lightprimary, shape: BoxShape.circle),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.settings,
                      color: ColorPalette.primary,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Hello, Amanda!",
            style: TextStyles.montserrat800_16
                .copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            decoration: BoxDecoration(
                color: ColorPalette.lightblue,
                borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current campaign",
                    style:
                        TextStyles.montserrat700_50.copyWith(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit luctus libero ac vulputate.",
                          style: TextStyles.montserrat400_13
                              .copyWith(fontSize: 10.sp),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      ForwardButton(
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 152.w,
                decoration: BoxDecoration(
                    color: ColorPalette.lightred,
                    borderRadius: BorderRadius.circular(25.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 5.0.h),
                  child: Center(
                    child: Text(
                      "Requested",
                      style: TextStyles.raleway700_12.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorPalette.darkpink),
                    ),
                  ),
                ),
              ),
              Container(
                width: 152.w,
                decoration: BoxDecoration(
                    color: ColorPalette.lightred,
                    borderRadius: BorderRadius.circular(25.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 5.0.h),
                  child: Center(
                    child: Text(
                      "Approved",
                      style: TextStyles.raleway700_12.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorPalette.darkpink),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Recent activities",
            style: TextStyles.montserrat700_16
                .copyWith(fontSize: 13.sp, color: ColorPalette.deepGrey),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 70.h,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    shape: const CircleBorder(),
                    color: ColorPalette.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 26.r,
                        backgroundImage:
                            const AssetImage(AppAssets.userprofile),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Done Compaign",
            style: TextStyles.montserrat700_16
                .copyWith(fontSize: 13.sp, color: ColorPalette.deepGrey),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 180.h,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const Story();
                }),
          )
        ],
      ),
    );
  }
}
