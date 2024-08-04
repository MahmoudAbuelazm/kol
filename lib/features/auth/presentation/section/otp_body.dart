import 'package:flutter/cupertino.dart';
import 'package:kol/features/auth/presentation/widgets/forward_button.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 200),
        Text(
          'Hello, Romina!!',
          style: TextStyles().montserrat700_50.copyWith(fontSize: 28),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Send again', style: TextStyles().montserrat400_13),
            const SizedBox(
              width: 20,
            ),
            ForwardButton(
              onPressed: () {
                AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
              },
            ),
          ],
        ),
      ],
    );
  }
}
