import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_in_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/input_field.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SignInForm extends StatelessWidget {

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      id: 'form',
        builder: (_){
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField(
                  icon: Icons.alternate_email_rounded,
                  label: 'email'.tr,
                  controller: mailController,
                  validator: (value){},
                ),
                SizedBox(height: kHeight * 0.02),
                InputField(
                  icon: Icons.lock_outline_rounded,
                  label: 'password'.tr,
                  controller: passwordController,
                  obscure: _.obscure,
                  iconShowPassword: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: Icon(Icons.remove_red_eye_rounded, color: kGrey, size: kInch * .025)),
                  validator: (value){},
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: kHeight * 0.02),
                    child: BodyText(
                      textAlign: TextAlign.right,
                      text: 'forgot_password'.tr,
                    )),
                RoundedButton(
                    text: 'sign_in'.tr,
                    onTap: () => _.goToProducts()),
              ],
            ),
          );
        });
  }
}
