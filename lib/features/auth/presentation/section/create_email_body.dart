import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_text_field.dart';
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
          top: 10.h,
          right: -103.w,
          child: Image.asset(
            AppAssets.bubble1,
            width: 300.w,
            height: 300.h,
          ),
        ),
        Positioned(
          top: -110.h,
          left: -50.w,
          child: Image.asset(
            AppAssets.bubble2,
            width: 311.w,
            height: 367.h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              50.verticalSpace,
              Text(
                'Create Account',
                style: TextStyles().montserrat700_50,
              ),
              80.verticalSpace,
              const CustomTextField(
                hintText: 'Name',
              ),
              15.verticalSpace,
              const CustomTextField(
                hintText: 'Country',
              ),
              15.verticalSpace,
              const CustomTextField(
                hintText: 'Mobile number',
              ),
              100.verticalSpace,
              CustomButton(
                  text: 'Send OTP',
                  onTap: () {
                    AppRouter.goRouter.pushNamed(AppRoute.login.name);
                  }),
              20.verticalSpace,
              const CancelButton()
            ],
          ),
        ),
      ],
    );
  }
}
