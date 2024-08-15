
import 'package:flutter/material.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/Local/app_localizations.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Cancel".tr(context),
        style: TextStyles().nunitoSans300_15,
      ),
    );
  }
}
