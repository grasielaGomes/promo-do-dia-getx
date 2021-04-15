import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_up_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/bottom_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/sign_up/sign_up_form.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: SignUpController(),
        builder: (_) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  BackgroundContainer(
                      height: kHeight * .9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageBox(
                              imagePath: kLogo,
                              width: kInch * .18),
                          SizedBox(height: kHeight * .06),
                          SignUpForm()
                        ],
                      )),
                  BottomButton(
                      height: kHeight * .1,
                      icon: Icons.account_circle_rounded,
                      text: 'sign_in'.tr,
                      onTap: () => _.goToSignIn())
                ],
              ),
            ),
          );
        });
  }
}

