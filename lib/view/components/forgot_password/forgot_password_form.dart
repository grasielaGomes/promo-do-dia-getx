import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/forgot_password_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/input_field.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_button.dart';


class ForgotPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
        id: 'form',
        builder: (_){
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InstructionText(text: 'tap_email'.tr),
                SizedBox(height: _.responsive.heightPercent(2)),
                InputField.email(
                  controller: _.mailController,
                  validator: (value){},
                ),
                SizedBox(height: _.responsive.heightPercent(3)),
                RoundedButton(
                    text: 'send'.tr,
                    onTap: () => _.goToEmailSent()),
              ],
            ),
          );
        });
  }
}
