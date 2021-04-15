import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/circle_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';


class SignInAccounts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InstructionText(
              text: 'login_with'.tr),
          SizedBox(height: (kHeight * 0.02) / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                  size: kInch * 0.06,
                  icon: FontAwesomeIcons.google,
                  onTap: (){}),
              SizedBox(width: kWidth * 0.04),
              CircleButton(
                  icon: FontAwesomeIcons.apple,
                  size: kInch * 0.06,
                  onTap: (){})
            ],
          )
        ]
    );
  }
}
