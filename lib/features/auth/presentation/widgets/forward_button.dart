import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';

class ForwardButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  const ForwardButton(
      {super.key, required this.onPressed, this.color = ColorPalette.pink});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          color: Colors.white,
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          icon: Center(child: Icon(Icons.arrow_forward, size: 20.r)),
        ),
      ),
    );
  }
}
