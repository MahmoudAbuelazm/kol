import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class CustomBloggerCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  
  final void Function() onTap;
  const CustomBloggerCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245.h,
      width: 165.w,
      child: GestureDetector(
        onTap:onTap ,
        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        image,
                      )),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: ColorPalette.lightblack.withOpacity(.32),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyles.montserrat400_13,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price,
                                  style: TextStyles.montserrat700_50
                                      .copyWith(fontSize: 17.sp),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.instagram,
                                      width: 30.w,
                                    ),
                                    Image.asset(
                                      AppAssets.tiktok,
                                      width: 18.w,
                                    ),
                                    Image.asset(
                                      AppAssets.facebook,
                                      width: 30.w,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
