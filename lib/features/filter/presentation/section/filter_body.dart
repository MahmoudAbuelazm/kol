import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/Local/app_localizations.dart';
import 'package:kol/services/router.dart';

import '../widgets/category_selectable_container.dart';
import '../widgets/country_card.dart';
import '../widgets/range_slider_data.dart';
import '../widgets/selected_age.dart';
import '../widgets/selected_gender.dart';

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filter".tr(context),
                style: TextStyles.montserrat700_50.copyWith(fontSize: 16.sp),
              ),
              IconButton(
                  onPressed: () {
                    AppRouter.goRouter.pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: ColorPalette.black,
                  ))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          const Row(
            children: [
              CountryCard(
                img: AppAssets.eg,
                country: "Egyptian",
              ),
              CountryCard(
                img: AppAssets.em,
                country: "Emirati",
              ),
              CountryCard(
                img: AppAssets.sa,
                country: "Saudi",
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          const SelectGender(),
          SizedBox(
            height: 16.h,
          ),
          const SelectedAge(),
          SizedBox(
            height: 38.h,
          ),
          const RangeSliderData(),
          SizedBox(
            height: 40.h,
          ),
          const Row(
            children: [
              CategorySelectableContainer(
                category: "Food",
              ),
              CategorySelectableContainer(
                category: "Travel",
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Row(
            children: [
              CategorySelectableContainer(
                category: "Fitness",
              ),
              CategorySelectableContainer(
                category: "Fashion",
              ),
            ],
          ),
          SizedBox(
            height: 195.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all<Size>(Size(90.w, 40.h)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  side: WidgetStateProperty.all<BorderSide>(
                    const BorderSide(
                      width: 2,
                      color: ColorPalette.primary,
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(ColorPalette.backgroundbutton),
                ),
                onPressed: () {
                  AppRouter.goRouter.pop();
                },
                child: Text(
                  "Clear".tr(context),
                  style: TextStyles.montserrat400_13
                      .copyWith(fontSize: 16.sp, color: ColorPalette.primary),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize:
                        WidgetStateProperty.all<Size>(Size(235.w, 40.h)),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    side: WidgetStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: ColorPalette.primary,
                      ),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all(ColorPalette.primary),
                  ),
                  onPressed: () {},
                  child: Text("Apply".tr(context),
                      style: TextStyles.montserrat400_13.copyWith(
                          fontSize: 16.sp, color: ColorPalette.white))),
            ],
          )
        ],
      ),
    );
  }
}
