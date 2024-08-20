import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/circular_text_field.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class CreateEmailBody extends StatelessWidget {
  const CreateEmailBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 40.h,
          right: 0,
          child: Image.asset(
            AppAssets.bubble1,
            width: 92.w,
            height: 280.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AppAssets.bubble2,
            width: 200.w,
            height: 220.h,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Text(
                'Create Account',
                style: TextStyles.montserrat700_50
                    .copyWith(height: 1.09, letterSpacing: -.1),
              ),
              SizedBox(
                height: 60.h,
              ),
              const CircularTextField(
                hintText: 'Name',
              ),
              SizedBox(
                height: 15.h,
              ),
              const CircularTextField(
                hintText: 'Country',
              ),
              SizedBox(
                height: 15.h,
              ),
              const CircularTextField(
                hintText: 'Mobile number',
              ),
              SizedBox(
                height: 120.h,
              ),
              CustomButton(
                  text: 'Send OTP',
                  onTap: () {
                    AppRouter.goRouter.pushNamed(AppRoute.login.name);
                  }),
              const CancelButton()
            ],
          ),
        ),
      ],
    );
  }
}
