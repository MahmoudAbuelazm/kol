import 'package:flutter/material.dart';

import '../section/categories_body.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  CategoriesBody(),
    );
  }
}