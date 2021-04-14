import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/bottom_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_accounts.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_form.dart';
import 'package:promo_do_dia_getx/view/components/sign_in/sign_in_policy.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackgroundContainer(
              padding: kWidth * 0.1,
                height: kHeight * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: kHeight * 0.03,
                    ),
                    ImageBox(
                        imagePath: kLogo,
                        width: kInch * 0.18),
                    SignInForm(),
                    SignInAccounts(),
                    SignInPolicy(),
                  ],
                )),
            BottomButton(
                height: kHeight * 0.1,
                icon: Icons.add_business_rounded,
                text: 'sign_up'.tr,
                onTap: (){})
          ],
        ),
      ),
    );
  }
}
