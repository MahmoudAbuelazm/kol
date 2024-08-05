import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/login_body.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: LoginBody(),
      ),
    );
  }
}
