import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class CountryCard extends StatefulWidget {
  final String img;
  final String country;
  const CountryCard({
    super.key,
    required this.img,
    required this.country,
  });

  @override
  State<CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Card(
            shape: const CircleBorder(),
            color: ColorPalette.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 26.r,
                    backgroundImage: AssetImage(widget.img),
                  ),
                ),
                Visibility(
                  visible: isSelected,
                  child: Positioned.directional(
                      textDirection: Directionality.of(context),
                      end: 0,
                      top: 0,
                      child: CircleAvatar(
                        backgroundColor: ColorPalette.white,
                        radius: 15.r,
                        child: CircleAvatar(
                          backgroundColor: ColorPalette.darkpink,
                          radius: 12.r,
                          child: Icon(
                            Icons.check,
                            color: ColorPalette.white,
                            size: 17.sp,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        8.verticalSpace,
        Text(
          widget.country,
          style:
              TextStyles.montserrat400_13.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
