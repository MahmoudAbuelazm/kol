import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/blogger_register_one_body.dart';

class BloggerRegisterOne extends StatelessWidget {
  static const id = 'bloggerRegisterOne';
  const BloggerRegisterOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: BloggerRegisterOneBody(),
      ),
    );
  }
}
