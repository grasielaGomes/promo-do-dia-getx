import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_in_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/input_field.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SignInForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      id: 'form',
        builder: (_){
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField.email(
                  controller: _.mailController,
                  validator: (value){},
                ),
                InputField.password(
                  label: 'password'.tr,
                  controller: _.passwordController,
                  suffixIcon: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: Icon(Icons.remove_red_eye_rounded,
                          color: kGrey,
                          size: _.responsive.inchPercent(2.5))),
                  validator: (value){},
                ),
                GestureDetector(
                  onTap: () =>_.goForgotPassword(),
                  child: Padding(
                      padding: EdgeInsets.only(bottom: _.responsive.heightPercent(2)),
                      child: BodyText(
                        textAlign: TextAlign.right,
                        text: 'forgot_password'.tr,
                      )),
                ),
                RoundedButton(
                    text: 'sign_in'.tr,
                    onTap: () => _.goUserType()),
              ],
            ),
          );
        });
  }
}
