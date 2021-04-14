import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:get/get.dart';

class SignInPolicy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('privacy_policy1'.tr,
          style: TextStyle(
              color: kGrey,
              fontSize: kInch * 0.016
        ),),
        TextButton(
            onPressed: (){},
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kPrimaryColor.withAlpha(50))

            ),
            child: Text('privacy_policy2'.tr,
                style: TextStyle(
                    fontSize: kInch * 0.016,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline)))
      ],
    );
  }
}
