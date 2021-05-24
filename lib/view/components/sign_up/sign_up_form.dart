import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/sign_up_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/input_field.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SignUpForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GetBuilder<SignUpController>(
        id: 'form',
        builder: (_){
          final double _iconSize = _.responsive.inchPercent(2.5);
          final Widget _suffixIcon = Icon(Icons.remove_red_eye_rounded, color: kGrey, size: _iconSize);
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField.user(
                  controller: _.userController,
                  validator: (value){},
                ),
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
                      child: _suffixIcon),
                  validator: (value){},
                ),
                InputField.password(
                  label: 'same_password'.tr,
                  controller: _.passwordController2,
                  suffixIcon: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: _suffixIcon),
                  validator: (value){},
                ),
                SizedBox(height: _.responsive.heightPercent(2)),
                RoundedButton(
                    text: 'sign_up'.tr,
                    onTap: (){}),
              ],
            ),
          );
    });
  }
}
