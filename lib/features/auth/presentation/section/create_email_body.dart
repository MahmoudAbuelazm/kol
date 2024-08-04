import 'package:flutter/cupertino.dart';
import 'package:kol/features/auth/presentation/widgets/cancel_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class CreateEmailBody extends StatelessWidget {
  const CreateEmailBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Text(
          'Create Account',
          style: TextStyles().montserrat700_50,
        ),
        const SizedBox(height: 80),
        const CustomTextField(
          hintText: 'Name',
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTextField(
          hintText: 'Country',
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTextField(
          hintText: 'Mobile number',
        ),
        const SizedBox(height: 100),
        CustomButton(text: 'Send OTP', onTap: () {
         AppRouter.goRouter.pushNamed(AppRoute.login.name);
        }),
        const SizedBox(
          height: 20,
        ),
        const CancelButton()
      ],
    );
  }
}
