import 'package:flutter/material.dart';

import '../section/blogger_profile_body.dart';

class BloggerProfile extends StatelessWidget {
  const BloggerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BloggerProfileBody(),
    );
  }
}
