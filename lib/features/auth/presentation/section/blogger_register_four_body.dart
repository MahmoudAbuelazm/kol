import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/container_with_dropdown.dart';
import 'package:kol/features/auth/presentation/widgets/semi_circular_text_field.dart';
import 'package:kol/features/auth/presentation/widgets/small_button.dart';
import 'package:kol/resources/assets/app_assets.dart';

import '../../../../services/router.dart';

class BloggerRegisterFourBody extends StatelessWidget {
  const BloggerRegisterFourBody({super.key});
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    AppRouter.goRouter.pop();
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              const ContainerWithDropdown(text: 'Date of Birth'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Language'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Gender'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Marital Status'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Show Face'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Use Voice'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Goes in Public Places'),
              SizedBox(
                height: 35.h,
              ),
              const ContainerWithDropdown(text: 'Wear Hijab'),
              SizedBox(
                height: 35.h,
              ),
              const SemiCircularTextField(
                label: 'Nationality',
                maxLines: 1,
              ),
              SizedBox(
                height: 35.h,
              ),
              SmallButton(
                  text: 'Submit',
                  onTap: () {
                    AppRouter.goRouter.pushNamed(AppRoute.bloggerProfile.name);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
