
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class CategoriesCard extends StatelessWidget {
  final String text;
  final String image;
  final String count;
  const CategoriesCard({
    super.key,
    required this.text,
    required this.image,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 195.h,
      child: Card(
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2),
                  children: [
                    for (int i = 0; i < 4; i++)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          image,
                        ),
                      )
                  ],
                ),
                8.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style:
                          TextStyles.montserrat700_50.copyWith(fontSize: 13.sp),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorPalette.lighpink,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        child: Text(
                          count,
                          style: TextStyles.raleway700_12,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
