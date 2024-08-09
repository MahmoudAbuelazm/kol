import 'package:flutter/material.dart';
import 'package:kol/features/home/manager/models/bloggers_model.dart';

import '../section/request_body.dart';

class RequestScreen extends StatelessWidget {
  final BloggersModel bloggersModel;
  const RequestScreen({super.key, required this.bloggersModel});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: RequestBody(
        bloggersModel: bloggersModel,
      ),
    );
  }
}
