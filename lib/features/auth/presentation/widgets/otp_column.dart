import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/features/auth/presentation/widgets/pinput_body.dart';
import 'package:kol/resources/styles/text_styles.dart';

class OtpColumn extends StatelessWidget {
  const OtpColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'OTP',
        style: TextStyles().montserrat300_19,
      ),
      16.verticalSpace,
      const PinPutBody(),
      8.verticalSpace,
      Text('00:60', style: TextStyles().montserrat700_16),
    ]);
  }
}
