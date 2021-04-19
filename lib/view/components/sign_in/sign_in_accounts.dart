import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/circle_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';


class SignInAccounts extends StatelessWidget {

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          InstructionText(
              text: 'login_with'.tr),
          SizedBox(height: _responsive.heightPercent(1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleButton(
                  size: _responsive.inchPercent(6),
                  icon: FontAwesomeIcons.google,
                  onTap: (){}),
              SizedBox(width: _responsive.widthPercent(4)),
              CircleButton(
                  icon: FontAwesomeIcons.apple,
                  size: _responsive.inchPercent(6),
                  onTap: (){})
            ],
          )
        ]
    );
  }
}
