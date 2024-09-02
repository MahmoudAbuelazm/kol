import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/styles/text_styles.dart';
import '../../../../utils/constants.dart';
import '../../../home/presentation/widget/categories_card.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25.h,
          ),
          Text("Categories",
              style: TextStyles.montserrat700_50.copyWith(fontSize: 18.sp)),
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: GridView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: .8,
                    crossAxisCount: 2),
                children: [
                  ...List.generate(
                    Constants.categories.length * 2,
                    (index) => CategoriesCard(
                      text: Constants
                          .categories[index % Constants.categories.length].name,
                      count: Constants
                          .categories[index % Constants.categories.length]
                          .count,
                      image: Constants
                          .categories[index % Constants.categories.length]
                          .image,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
