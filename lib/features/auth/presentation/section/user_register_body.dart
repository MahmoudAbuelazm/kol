import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/intl_phone_field.dart';
import 'package:kol/features/auth/presentation/widgets/semi_circular_text_field.dart';
import 'package:kol/features/auth/presentation/widgets/small_button.dart';
import 'package:kol/resources/assets/app_assets.dart';

class UserRegisterBody extends StatelessWidget {
  const UserRegisterBody({super.key});
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
            children: [
              const SemiCircularTextField(
                hintText: '',
                label: 'First Name',
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                hintText: '',
                label: 'Last Name',
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                hintText: '',
                label: 'Full Name',
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                hintText: '',
                label: 'Email',
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                hintText: '',
                label: 'Password',
              ),
              SizedBox(
                height: 35.h,
              ),
              const IntlPhoneFields(
                label: 'Phone Number',
              ),
              SizedBox(
                height: 15.h,
              ),
              const IntlPhoneFields(
                label: 'CParent Phone',
              ),
              SizedBox(
                height: 15.h,
              ),
              SmallButton(text: 'Submit', onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
