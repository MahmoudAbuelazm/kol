import 'package:flutter/cupertino.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 200),
        Text(
          'Login',
          style: TextStyles().montserrat700_50,
        ),
        Text(
          'Good to see you back!',
          style: TextStyles().nunitoSans300_15.copyWith(fontSize: 19),
        ),
        const SizedBox(height: 80),
        const CustomTextField(
          hintText: 'Mobile number',
        ),
        const SizedBox(height: 100),
        CustomButton(text: 'Send OTP', onTap: () {
           AppRouter.goRouter.pushNamed(AppRoute.otp.name);
        }),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.center,
          child: CancelButton(),
        )
      ],
    );
  }
}
