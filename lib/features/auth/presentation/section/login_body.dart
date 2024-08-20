import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/circular_text_field.dart';
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
          top: 268.h,
          right: 0,
          child: Image.asset(
            AppAssets.bubble5,
            width: 90.w,
            height: 150.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AppAssets.bubble3,
            width: 245.w,
            height: 280.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AppAssets.bubble4,
            width: 300.w,
            height: 340.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.bubble6,
            width: 230.w,
            height: 300.h,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 238.h,
              ),
              Text(
                'Login',
                style: TextStyles.montserrat700_50,
              ),
              Text(
                'Good to see you back!',
                style: TextStyles().nunitoSans300_15.copyWith(fontSize: 19),
              ),
              SizedBox(
                height: 64.h,
              ),
              const CircularTextField(
                hintText: 'Mobile number',
              ),
              SizedBox(
                height: 160.h,
              ),
              CustomButton(
                  text: 'Send OTP',
                  onTap: () {
                    AppRouter.goRouter.pushNamed(AppRoute.otp.name);
                  }),
              SizedBox(
                height: 14.h,
              ),
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
