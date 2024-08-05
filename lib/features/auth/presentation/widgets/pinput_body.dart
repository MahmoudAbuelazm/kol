import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPutBody extends StatefulWidget {
  // final TextEditingController pinController;

  const PinPutBody({
    super.key,
  });

  @override
  State<PinPutBody> createState() => _PinPutBodyState();
}

class _PinPutBodyState extends State<PinPutBody> {
  @override
  void dispose() {
    // widget.pinController.dispose();
    super.dispose();
  }

  // void _submitPin() {
  //   String pin = widget.pinController.text;
  //   print('Entered PIN: $pin');
  //   // You can use the 'pin' variable for further processing
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Pinput(
            length: 4,
            //controller: widget.pinController,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            keyboardType: TextInputType.number,
            defaultPinTheme: PinTheme(
              height: 55,
              width: 55,
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: BoxDecoration(
                color: Colors.grey[300]!,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
