import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/services/Local/app_localizations.dart';
import 'package:kol/services/router.dart';
import 'package:kol/utils/constants.dart';

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
                      hintText: 'Search'.tr(context),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                GestureDetector(
                    onTap: () {
                      AppRouter.goRouter.pushNamed(AppRoute.filTer.name);
                    },
                    child: SvgPicture.asset(AppAssets.settings))
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
                  "Categories".tr(context),
                  style: TextStyles.montserrat700_50.copyWith(fontSize: 21.sp),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "See All".tr(context),
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
            GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: .8,
                    crossAxisCount: 2),
                children: [
                  ...List.generate(
                    Constants.categories.length,
                    (index) => CategoriesCard(
                      text: Constants.categories[index].name,
                      count: Constants.categories[index].count,
                      image: Constants.categories[index].image,
                    ),
                  ),
                ]),
            15.verticalSpace,
            Text(
              "All bloggers".tr(context),
              style: TextStyles.montserrat700_50.copyWith(fontSize: 18.sp),
            ),
            8.verticalSpace,
            GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: .7,
                    crossAxisCount: 2),
                children: [
                  ...List.generate(
                    Constants.bloggers.length,
                    (index) => CustomBloggerCard(
                      onTap: () {
                        AppRouter.goRouter.pushNamed(AppRoute.request.name,
                            extra: {
                              'bloggersModel': Constants.bloggers[index]
                            });
                      },
                      name: Constants.bloggers[index].name,
                      price: Constants.bloggers[index].price,
                      image: Constants.bloggers[index].image,
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
