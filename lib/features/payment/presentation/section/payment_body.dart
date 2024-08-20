import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kol/resources/colors/color_palette.dart';
import 'package:kol/resources/styles/text_styles.dart';

import '../widgets/add_card_button.dart';
import '../widgets/custom_text_field.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorPalette.addCard,
                borderRadius: BorderRadius.circular(5)),
            height: 100.h,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                          ),
                          color: ColorPalette.white,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 28.h,
                                ),
                                Text("Add Card",
                                    style: TextStyles.montserrat700_50.copyWith(
                                      fontSize: 16.sp,
                                    )),
                                SizedBox(
                                  height: 56.h,
                                ),
                                Text("Name on card",
                                    style: TextStyles.montserrat400_13.copyWith(
                                      fontWeight: FontWeight.w600,
                                    )),
                                const CustomAddCardTextField(),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text("Card number",
                                    style: TextStyles.montserrat400_13.copyWith(
                                      fontWeight: FontWeight.w600,
                                    )),
                                const CustomAddCardTextField(),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Exp date",
                                              style: TextStyles.montserrat400_13
                                                  .copyWith(
                                                fontWeight: FontWeight.w600,
                                              )),
                                          const CustomAddCardTextField(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("CVV",
                                              style: TextStyles.montserrat400_13
                                                  .copyWith(
                                                fontWeight: FontWeight.w600,
                                              )),
                                          const CustomAddCardTextField(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Center(
                                  child: Text("Save card",
                                      style:
                                          TextStyles.montserrat400_13.copyWith(
                                        color: ColorPalette.primary,
                                        decoration: TextDecoration.underline,
                                      )),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                AddCardButton(
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: ColorPalette.primary,
                  ),
                  Text(
                    "Add Card",
                    style: TextStyles.montserrat400_13
                        .copyWith(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          AddCardButton(
            onPressed: () {},
          ),
         
        ],
      ),
    );
  }
}
