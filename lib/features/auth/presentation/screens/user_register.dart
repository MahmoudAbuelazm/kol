import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/user_register_body.dart';

class UserRegister extends StatelessWidget {
  static const id = 'userRegister';
  const UserRegister({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: UserRegisterBody()),
    );
  }
}
