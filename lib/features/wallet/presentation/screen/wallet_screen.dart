import 'package:flutter/material.dart';

import '../section/wallet_body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body:  const WalletBody(),
    );
  }
}
