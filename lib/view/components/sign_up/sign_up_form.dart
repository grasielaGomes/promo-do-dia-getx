import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_up_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/input_field.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SignUpForm extends StatelessWidget {

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        id: 'form',
        builder: (_){
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField(
                  icon: Icons.person_outline_rounded,
                  label: 'name'.tr,
                  controller: mailController,
                  validator: (value){},
                ),
                SizedBox(height: kHeight * 0.02),
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
                SizedBox(height: kHeight * 0.02),
                InputField(
                  icon: Icons.lock_outline_rounded,
                  label: 'same_password'.tr,
                  controller: passwordController2,
                  obscure: _.obscure,
                  iconShowPassword: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: Icon(Icons.remove_red_eye_rounded, color: kGrey, size: kInch * .025)),
                  validator: (value){},
                ),
                SizedBox(height: kHeight * 0.04),
                RoundedButton(
                    text: 'sign_up'.tr,
                    onTap: (){}),
              ],
            ),
          );
    });
  }
}
