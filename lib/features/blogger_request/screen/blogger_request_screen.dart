import 'package:flutter/material.dart';

import '../section/blogger_request_body.dart';

class BloggerRequestScreen extends StatelessWidget {
  const BloggerRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Requested campaign'),
      ),
      body: const BloggerRequestBody(),
    );
  }
}