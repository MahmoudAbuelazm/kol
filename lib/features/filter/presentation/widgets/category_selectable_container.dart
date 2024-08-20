
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class CategorySelectableContainer extends StatefulWidget {
  final String category;

  const CategorySelectableContainer({
    super.key,
    required this.category,
  });

  @override
  State<CategorySelectableContainer> createState() =>
      _CategorySelectableContainerState();
}

class _CategorySelectableContainerState
    extends State<CategorySelectableContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 162.w,
        height: 30.h,
        decoration: BoxDecoration(
          color:
              isSelected ? ColorPalette.lightred : ColorPalette.lightunselected,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                child: Positioned.directional(
                    textDirection: Directionality.of(context),
                    end: 0,
                    top: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 15.r,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 12.r,
                        child: Icon(
                          Icons.check,
                          color: ColorPalette.white,
                          size: 17.sp,
                        ),
                      ),
                    )),
              ),
              Text(
                widget.category,
                style: TextStyles.raleway700_12.copyWith(
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 15.sp,
                    color: isSelected
                        ? ColorPalette.darkpink
                        : ColorPalette.black),
              ),
              Visibility(
                visible: isSelected,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
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
    );
  }
}
