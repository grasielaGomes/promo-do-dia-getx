import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_in_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/bottom_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_accounts.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_form.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_policy.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';


class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      init: SignInController(),
        builder: (_){
          return Scaffold(
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Stack(
                children: [
                  BackgroundContainer(heightPercentage: 90),
                  ContentContainer(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: _.responsive.heightPercent(7)),
                        ImageBox(
                            imagePath: kLogo,
                            width: _.responsive.inchPercent(18)),
                        SignInForm(),
                        SignInAccounts(),
                        SignInPolicy(),
                        BottomButton(
                            heightPercentage: 10,
                            icon: Icons.add_business_rounded,
                            text: 'sign_up'.tr,
                            onTap: () => _.goToSignUp())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
