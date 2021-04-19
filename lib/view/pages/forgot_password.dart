import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ForgotPassword extends StatelessWidget {
  final Responsive _responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            BackgroundContainer(
                height: _responsive.heightPercent(70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageBox(
                        imagePath: kLogo,
                        width: _responsive.inchPercent(18)),
                    SizedBox(height: _responsive.heightPercent(60)),
                    InstructionText(text: 'tap_email'.tr)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
