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
          final double _spaceHeight = _.responsive.heightPercent(2);
          final double _iconSize = _.responsive.inchPercent(2.5);
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InputField(
                  icon: Icons.person_outline_rounded,
                  label: 'name'.tr,
                  controller: _.userController,
                  validator: (value){},
                ),
                SizedBox(height: _spaceHeight),
                InputField(
                  icon: Icons.alternate_email_rounded,
                  label: 'email'.tr,
                  controller: _.mailController,
                  validator: (value){},
                ),
                SizedBox(height: _spaceHeight),
                InputField(
                  icon: Icons.lock_outline_rounded,
                  label: 'password'.tr,
                  controller: _.passwordController,
                  obscure: _.obscure,
                  iconShowPassword: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: Icon(Icons.remove_red_eye_rounded, color: kGrey, size: _iconSize)),
                  validator: (value){},
                ),
                SizedBox(height: _spaceHeight),
                InputField(
                  icon: Icons.lock_outline_rounded,
                  label: 'same_password'.tr,
                  controller: _.passwordController2,
                  obscure: _.obscure,
                  iconShowPassword: GestureDetector(
                      onTapUp: _.onTapUp,
                      onTapDown: _.onTapDown,
                      child: Icon(Icons.remove_red_eye_rounded, color: kGrey, size: _iconSize)),
                  validator: (value){},
                ),
                SizedBox(height: _spaceHeight * 2),
                RoundedButton(
                    text: 'sign_up'.tr,
                    onTap: (){}),
              ],
            ),
          );
    });
  }
}
