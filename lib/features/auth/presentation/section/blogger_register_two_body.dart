import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/container_with_dropdown.dart';
import 'package:kol/features/auth/presentation/widgets/semi_circular_text_field.dart';
import 'package:kol/features/auth/presentation/widgets/small_button.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/services/router.dart';

class BloggerRegisterTwoBody extends StatelessWidget {
  const BloggerRegisterTwoBody({super.key});
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
                label: 'City',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Country of Residence'),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Bio',
                maxLines: 3,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Full Address',
                maxLines: 3,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Instagram URL',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Insta Followers',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Posts',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Engagement',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              SmallButton(
                  text: 'Continue',
                  onTap: () {
                    AppRouter.goRouter
                        .pushNamed(AppRoute.bloggerRegisterThree.name);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
