import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class IntlPhoneFields extends StatelessWidget {
  final String label;
  const IntlPhoneFields({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
     
      decoration: InputDecoration(
        labelText: label,
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
      ),
      flagsButtonPadding: const EdgeInsets.all(0),
    
      initialCountryCode: 'EG',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
  }
}
