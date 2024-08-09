import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/styles/text_styles.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';
import '../../../home/manager/models/bloggers_model.dart';
import 'entry_date_container.dart';

class RequestBody extends StatelessWidget {
  final BloggersModel bloggersModel;
  const RequestBody({super.key, required this.bloggersModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 415.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bloggersModel.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: ColorPalette.lightContainer.withOpacity(.76),
                  height: 141.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              bloggersModel.name,
                              style: TextStyles.montserrat400_13.copyWith(
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(bloggersModel.price,
                                style: TextStyles.montserrat800_16),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.instagram,
                              width: 30.w,
                            ),
                            Text(
                              "2 M followers",
                              style: TextStyles.montserrat400_13,
                            )
                          ],
                        ),
                        8.verticalSpace,
                        Row(
                          children: [
                            6.horizontalSpace,
                            Image.asset(
                              AppAssets.tiktok,
                              width: 18.w,
                            ),
                            6.horizontalSpace,
                            Text(
                              "1.8 M followers",
                              style: TextStyles.montserrat400_13,
                            )
                          ],
                        ),
                        8.verticalSpace,
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.facebook,
                              width: 30.w,
                            ),
                            Text(
                              "2.5 M followers",
                              style: TextStyles.montserrat400_13,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const EntryDataContainer()
        ],
      ),
    );
  }
}
