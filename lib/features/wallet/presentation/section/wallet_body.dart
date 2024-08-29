import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 20.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xffF81140),
                    Color(0xff5A3392),
                  ]),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 14.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Available Balance",
                      style: TextStyles.montserrat700_16
                          .copyWith(fontSize: 13.sp, color: ColorPalette.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("\$ 450.54",
                        style: TextStyles.montserrat700_16.copyWith(
                            fontSize: 13.sp,
                            color: ColorPalette.white,
                            fontWeight: FontWeight.w400))
                  ]),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          const TransferData(),
          SizedBox(
            height: 6.h,
          ),
          const TransferData(),
          SizedBox(
            height: 6.h,
          ),
          const TransferData(),
          SizedBox(
            height: 6.h,
          ),
          const TransferData(),
          SizedBox(
            height: 6.h,
          ),
        ],
      ),
    );
  }
}

class TransferData extends StatelessWidget {
  const TransferData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorPalette.lightblue,
          borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "April,19 2024 12:31",
                  style: TextStyles.raleway700_12
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
                Text(
                  "Customer name\’s campaign ",
                  style: TextStyles.raleway700_12.copyWith(fontSize: 14.sp),
                )
              ],
            ),
            Text(
              "\$21,00",
              style: TextStyles.raleway700_12.copyWith(fontSize: 17.sp),
            )
          ],
        ),
      ),
    );
  }
}
