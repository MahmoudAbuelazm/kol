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
          top: -100.h,
          left: -60.w,
          child: Image.asset(
            AppAssets.bubble3,
            width: 300.w,
            height: 360.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: -20.h,
          left: -50.w,
          child: Image.asset(
            AppAssets.bubble4,
            width: 373.w,
            height: 325.h,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            200.verticalSpace,
            Text(
              'Hello, Romina!!',
              style: TextStyles().montserrat700_50.copyWith(fontSize: 28),
            ),
            40.verticalSpace,
            const OtpColumn(),
            220.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Send again', style: TextStyles().montserrat400_13),
                10.horizontalSpace,
                ForwardButton(
                  onPressed: () {
                    AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
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
