import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class CustomBloggerCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final bool isFavourite;

  final void Function() onTap;
  const CustomBloggerCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onTap,
    this.isFavourite = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 245.h,
      width: 165.w,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.zero,
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
                child: isFavourite
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 36.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  color: ColorPalette.black.withOpacity(.5),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5)),
                                ),
                                child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.favorite,
                                      color: ColorPalette.darkpink,
                                      size: 19,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                              color: ColorPalette.lightblack.withOpacity(.32),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                      )
                    : Column(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
