import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/forward_button.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class Start extends StatelessWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            SizedBox(
              height: 190.h,
            ),
            Image.asset(
              AppAssets.logo,
              width: 208.w,
              height: 183.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Lorem Ipsum is simply dummy text',
              style: TextStyles.montserrat400_13,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'and typesetting.',
              style: TextStyles.montserrat400_13,
            ),
            SizedBox(
              height: 180.h,
            ),
            CustomButton(
              text: 'Lets get started',
              onTap: () {
                AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
              },
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account',
                    style: TextStyles.montserrat400_13),
                SizedBox(
                  width: 20.w,
                ),
                ForwardButton(
                  onPressed: () {
                    AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
