import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class SignInPolicy extends StatelessWidget {

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    final double _fontSize = _responsive.inchPercent(1.6);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('privacy_policy1'.tr,
          style: TextStyle(
              color: kGrey,
              fontSize: _fontSize
        ),),
        TextButton(
            onPressed: (){},
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kPrimaryColor.withAlpha(50))

            ),
            child: Text('privacy_policy2'.tr,
                style: TextStyle(
                    fontSize: _fontSize,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline)))
      ],
    );
  }
}
