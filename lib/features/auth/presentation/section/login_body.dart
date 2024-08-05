import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 170.h,
          right: -120.w,
          child: Image.asset(
            AppAssets.bubble5,
            width: 250.w,
            height: 250.h,
            fit: BoxFit.fitHeight,
          ),
        ),
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              200.verticalSpace,
              Text(
                'Login',
                style: TextStyles().montserrat700_50,
              ),
              Text(
                'Good to see you back!',
                style: TextStyles().nunitoSans300_15.copyWith(fontSize: 19),
              ),
              80.verticalSpace,
              const CustomTextField(
                hintText: 'Mobile number',
              ),
              100.verticalSpace,
              CustomButton(
                  text: 'Send OTP',
                  onTap: () {
                    AppRouter.goRouter.pushNamed(AppRoute.otp.name);
                  }),
              20.verticalSpace,
              const Align(
                alignment: Alignment.center,
                child: CancelButton(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
