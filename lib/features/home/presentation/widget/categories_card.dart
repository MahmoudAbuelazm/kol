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
    return Card(
        elevation: 4,
        color: Colors.white,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
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
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      text,
                      style: TextStyles.montserrat700_50
                          .copyWith(color: ColorPalette.black, fontSize: 12.sp),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        color: ColorPalette.lighpink,
                        borderRadius: BorderRadius.circular(7.r)),
                    child: Text(
                      count,
                      style: TextStyles.raleway700_12,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
