import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/otp_body.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpBody(),
    );
  }
}
