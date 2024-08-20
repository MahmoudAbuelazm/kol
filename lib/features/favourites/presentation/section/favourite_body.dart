import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/styles/text_styles.dart';
import '../../../../services/router.dart';
import '../../../../utils/constants.dart';
import '../../../home/presentation/widget/custom_blogger_card.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Text("Favorite",
                style: TextStyles.montserrat700_50.copyWith(fontSize: 18.sp)),
            SizedBox(
              height: 8.h,
            ),
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
                      isFavourite: true,
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
