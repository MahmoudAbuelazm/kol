import 'package:flutter/material.dart';

import '../section/favourite_body.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavouriteBody(),
    );
  }
}
