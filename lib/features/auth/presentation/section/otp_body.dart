import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/forward_button.dart';
import 'package:kol/features/auth/presentation/widgets/otp_column.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AppAssets.bubble3,
            width: 245.w,
            height: 290.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AppAssets.bubble4,
            width: 300.w,
            height: 330.h,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 280.h,
            ),
            Text(
              'Hello, Romina!!',
              style: TextStyles.montserrat700_50.copyWith(fontSize: 28),
            ),
            SizedBox(
              height: 40.h,
            ),
            const OtpColumn(),
            SizedBox(
              height: 210.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Send again', style: TextStyles.montserrat400_13),
                SizedBox(
                  width: 10.h,
                ),
                ForwardButton(
                  onPressed: () {
                    AppRouter.goRouter.pushNamed(AppRoute.mainscreen.name,
                        extra: {'intialSection': 0});
                  },
                ),
                SizedBox(width: 10.w),
                ForwardButton(
                  onPressed: () {
                    AppRouter.goRouter.pushNamed(AppRoute.bloggerProfile.name);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
