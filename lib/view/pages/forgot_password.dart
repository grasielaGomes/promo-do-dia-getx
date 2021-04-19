import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            BackgroundContainer(
                height: kHeight * .7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageBox(
                        imagePath: kLogo,
                        width: kInch * .18),
                    SizedBox(height: kHeight * .06),
                    InstructionText(text: 'tap_email'.tr)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
