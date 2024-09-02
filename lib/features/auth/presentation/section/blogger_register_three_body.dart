import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/container_with_dropdown.dart';
import 'package:kol/features/auth/presentation/widgets/semi_circular_text_field.dart';
import 'package:kol/features/auth/presentation/widgets/small_button.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/services/router.dart';

class BloggerRegisterThreeBody extends StatelessWidget {
  const BloggerRegisterThreeBody({super.key});
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [ IconButton(
                  onPressed: () {
                    AppRouter.goRouter.pop();
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              const SemiCircularTextField(
                label: 'Snapchat URL',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Snap Followers',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'TikTok URL',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Tiktok Followers',
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
                label: 'Youtube URL',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'YouTube Followers',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Career'),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Specialization',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              SmallButton(text: 'Continue', onTap: () {
                AppRouter.goRouter
                    .pushNamed(AppRoute.bloggerRegisterFour.name);
              }),
            ],
          ),
        ),
      ],
    );
  }
}
