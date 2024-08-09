import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../resources/assets/app_assets.dart';
import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';
import '../../../../services/router.dart';

class EntryDataContainer extends StatefulWidget {
  const EntryDataContainer({
    super.key,
  });

  @override
  State<EntryDataContainer> createState() => _EntryDataContainerState();
}

class _EntryDataContainerState extends State<EntryDataContainer> {
  final TextEditingController _controller = TextEditingController();
  String _fromDate = "From";
  String _toDate = "To";
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.backgroundbutton,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            Text(
              "Request campaign",
              style: TextStyles.montserrat400_13.copyWith(
                fontSize: 15.sp,
              ),
            ),
            6.verticalSpace,
            TextField(
              controller: _controller,
              maxLines: 4,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: ColorPalette.lightblack,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: ColorPalette.lightblack,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: ColorPalette.lightblack,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyles.montserrat400_13.copyWith(
                    color: ColorPalette.grey,
                  ),
                  hintText: "Your campaign brief"),
            ),
            8.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 157.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorPalette.lightblack),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _fromDate,
                          style: TextStyles.montserrat400_13.copyWith(
                            color: ColorPalette.grey,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2025),
                              ).then((selectedDate) {
                                if (selectedDate != null) {
                                  setState(() {
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(selectedDate);
                                    _fromDate = formattedDate;
                                  });
                                }
                              });
                            },
                            child: SvgPicture.asset(AppAssets.calender))
                      ],
                    ),
                  ),
                ),
                13.horizontalSpace,
                Container(
                  width: 157.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorPalette.lightblack),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _toDate,
                          style: TextStyles.montserrat400_13.copyWith(
                            color: ColorPalette.grey,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2025),
                              ).then((selectedDate) {
                                if (selectedDate != null) {
                                  setState(() {
                                    String formattedDate =
                                        DateFormat('yyyy-MM-dd')
                                            .format(selectedDate);
                                    _toDate = formattedDate;
                                  });
                                }
                              });
                            },
                            child: SvgPicture.asset(AppAssets.calender))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_outline,
                    color: ColorPalette.pink,
                    size: 26,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize:
                        WidgetStateProperty.all<Size>(Size(128.w, 40.h)),
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
                        WidgetStateProperty.all(ColorPalette.backgroundbutton),
                  ),
                  onPressed: () {
                    AppRouter.goRouter.pop();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyles.montserrat400_13
                        .copyWith(fontSize: 16.sp, color: ColorPalette.black),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          WidgetStateProperty.all<Size>(Size(128.w, 40.h)),
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
                    child: Text("Request",
                        style: TextStyles.montserrat400_13.copyWith(
                            fontSize: 16.sp, color: ColorPalette.white))),
              ],
            ),
            15.verticalSpace,
          ],
        ),
      ),
    );
  }
}
