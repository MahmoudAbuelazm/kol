
import 'package:flutter/material.dart';
import 'package:kol/resources/styles/text_styles.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Cancel',
        style: TextStyles().nunitoSans300_15,
      ),
    );
  }
}
