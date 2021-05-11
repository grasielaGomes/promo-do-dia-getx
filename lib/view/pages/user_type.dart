import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button_outlined.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class UserType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundContainer(heightPercentage: 0),
          ContentContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InstructionText(
                  text: 'sign_in_like'.tr,
                  color: kLightPrimaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: RoundedButtonOutlined(
                      text: 'client'.tr,
                      onTap: () => Get.offAndToNamed('/all-pages')),
                ),
                RoundedButton(
                    text: 'administrator'.tr,
                    color: kLightPrimaryColor,
                    textColor: kPrimaryColor,
                    onTap: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
