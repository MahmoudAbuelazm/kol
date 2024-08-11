import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/blogger_register_two_body.dart';

class BloggerRegisterTwo extends StatelessWidget {
  static const id = 'bloggerRegisterTwo';
  const BloggerRegisterTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: BloggerRegisterTwoBody(),
      ),
    );
  }
}
