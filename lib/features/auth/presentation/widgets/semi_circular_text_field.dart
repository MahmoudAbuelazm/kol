import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/styles/text_styles.dart';

class SemiCircularTextField extends StatelessWidget {
  final String hintText;
  final String label;
  const SemiCircularTextField(
      {super.key, required this.hintText, required this.label});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
       
        hintText: hintText,
        hintStyle: TextStyles().poppins500_13.copyWith(color: Colors.grey),
        label: Text(label),
      ),
    );
  }
}
