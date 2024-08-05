import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/section/create_email_body.dart';

class CreateEmail extends StatelessWidget {
  const CreateEmail({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: CreateEmailBody(),
      ),
    );
  }
}
