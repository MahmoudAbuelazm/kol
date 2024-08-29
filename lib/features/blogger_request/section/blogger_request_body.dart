import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';

import '../../auth/presentation/widgets/custom_button.dart';

class BloggerRequestBody extends StatelessWidget {
  const BloggerRequestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: ColorPalette.grey.withOpacity(.2))),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyles.montserrat400_13,
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(right: 60.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "12 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "30 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: ColorPalette.primary,
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                            ColorPalette.backgroundbutton),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 20.w),
                        child: Text(
                          "Reject",
                          style: TextStyles.montserrat400_13.copyWith(
                              fontSize: 16.sp, color: ColorPalette.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CustomButton(text: 'Approve', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: ColorPalette.grey.withOpacity(.2))),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyles.montserrat400_13,
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(right: 60.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "12 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "30 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: ColorPalette.primary,
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                            ColorPalette.backgroundbutton),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 20.w),
                        child: Text(
                          "Reject",
                          style: TextStyles.montserrat400_13.copyWith(
                              fontSize: 16.sp, color: ColorPalette.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CustomButton(text: 'Approve', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: ColorPalette.grey.withOpacity(.2))),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyles.montserrat400_13,
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(right: 60.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "12 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To",
                            style: TextStyles.montserrat400_13,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "30 Aug 2024",
                            style: TextStyles.montserrat400_13
                                .copyWith(color: ColorPalette.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero,
                        ),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: ColorPalette.primary,
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                            ColorPalette.backgroundbutton),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 20.w),
                        child: Text(
                          "Reject",
                          style: TextStyles.montserrat400_13.copyWith(
                              fontSize: 16.sp, color: ColorPalette.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CustomButton(text: 'Approve', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
