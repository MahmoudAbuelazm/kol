import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/forward_button.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class Start extends StatelessWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            'KOL',
            style: TextStyles().logo,
          ),
          20.verticalSpace,
          Text(
            'Lorem Ipsum is simply dummy text',
            style: TextStyles().montserrat400_13,
          ),
          20.verticalSpace,
          Text(
            'and typesetting.',
            style: TextStyles().montserrat400_13,
          ),
          const Spacer(
            flex: 3,
          ),
          CustomButton(
            text: 'Lets get started',
            onTap: () {
              AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
            },
          ),
          18.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account',
                  style: TextStyles().montserrat400_13),
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
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ));
  }
}
