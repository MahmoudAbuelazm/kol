import 'package:flutter/material.dart';

import '../section/user_profile_body.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  UserProfileBody(),
    );
  }
}