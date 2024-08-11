import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/blogger_register_three_body.dart';

class BloggerRegisterThree extends StatelessWidget {
  static const id = 'bloggerRegisterThree';
  const BloggerRegisterThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: BloggerRegisterThreeBody(),
      ),
    );
  }
}
