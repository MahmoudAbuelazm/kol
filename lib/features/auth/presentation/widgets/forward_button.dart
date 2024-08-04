import 'package:flutter/material.dart';
import 'package:kol/resources/colors/color_palette.dart';

class ForwardButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ForwardButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorPalette.pink,
      radius: 15,
      child: IconButton(
        color: Colors.white,
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_forward),
        iconSize: 15,
      ),
    );
  }
}
