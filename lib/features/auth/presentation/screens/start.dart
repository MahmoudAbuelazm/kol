import 'package:flutter/material.dart';
import 'package:kol/features/auth/presentation/widgets/custom_button.dart';
import 'package:kol/features/auth/presentation/widgets/forward_button.dart';
import 'package:kol/resources/styles/text_styles.dart';
import 'package:kol/services/router.dart';

class Start extends StatelessWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            'KOL',
            style: TextStyles().logo,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Lorem Ipsum is simply dummy text',
            style: TextStyles().montserrat400_13,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'and typesetting.',
            style: TextStyles().montserrat400_13,
          ),
          const SizedBox(
            height: 200,
          ),
          CustomButton(
              text: 'Lets get started',
              onTap: () {
                AppRouter.goRouter.pushNamed(AppRoute.createEmail.name);
              }),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account',
                  style: TextStyles().montserrat400_13),
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
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ));
  }
}
