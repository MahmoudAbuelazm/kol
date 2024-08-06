import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/colors/color_palette.dart';

import '../../../../resources/styles/text_styles.dart';
import '../../../auth/presentation/widgets/forward_button.dart';
import '../widget/categories_card.dart';
import '../widget/custom_blogger_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25.0)),
                      filled: true,
                      fillColor: ColorPalette.lightGrey,
                      hintText: 'Search',
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                SvgPicture.asset(AppAssets.settings)
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Categories",
                  style: TextStyles.montserrat700_50.copyWith(fontSize: 21.sp),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "See All",
                      style:
                          TextStyles.montserrat700_50.copyWith(fontSize: 15.sp),
                    ),
                    8.horizontalSpace,
                    ForwardButton(
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
            4.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoriesCard(
                  text: "Food blogger",
                  count: "109",
                  image: AppAssets.foodblogger,
                ),
                CategoriesCard(
                  text: "Travel blogger",
                  count: "530",
                  image: AppAssets.travelblogger,
                ),
              ],
            ),
            15.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoriesCard(
                  text: "Fitness blogger",
                  count: "87",
                  image: AppAssets.fitnessblogger,
                ),
                CategoriesCard(
                  text: "Fashion blogger",
                  count: "218",
                  image: AppAssets.fashionblogger,
                ),
              ],
            ),
            15.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoriesCard(
                  text: "Lifestyle blogger",
                  count: "218",
                  image: AppAssets.lifestyleblogger,
                ),
                CategoriesCard(
                  text: "Medical blogger",
                  count: "218",
                  image: AppAssets.medicalblogger,
                ),
              ],
            ),
            15.verticalSpace,
            Text(
              "All bloggers",
              style: TextStyles.montserrat700_50.copyWith(fontSize: 18.sp),
            ),
            8.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBloggerCard(
                  image: AppAssets.foodblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
                CustomBloggerCard(
                  image: AppAssets.travelblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
              ],
            ),
            4.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBloggerCard(
                  image: AppAssets.fitnessblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
                CustomBloggerCard(
                  image: AppAssets.fashionblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
              ],
            ),
            4.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBloggerCard(
                  image: AppAssets.lifestyleblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
                CustomBloggerCard(
                  image: AppAssets.medicalblogger,
                  name: "Name",
                  price: "\$17,00",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
