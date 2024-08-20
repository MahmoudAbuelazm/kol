import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/blogger_register_four_body.dart';

class BloggerRegisterFour extends StatelessWidget {
  static const id = 'bloggerRegisterFour';
  const BloggerRegisterFour({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: BloggerRegisterFourBody(),
      ),
    );
  }
}
