import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/forgot_password_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/commons/return_button.dart';
import 'package:promo_do_dia_getx/view/components/forgot_password/forgot_password_form.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      init: ForgotPasswordController(),
        builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Stack(
            children: [
              BackgroundContainer(
                  height: _.responsive.heightPercent(70)),
              ContentContainer(
                child: SafeArea(
                  bottom: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: ReturnButton(onTap: () => Get.back())),
                      ImageBox(
                          imagePath: kLogo,
                          width: _.responsive.inchPercent(18)),
                      ForgotPasswordForm(),
                      Container(
                        alignment: Alignment.center,
                        height: _.responsive.heightPercent(28),
                        child: BodyText(text: 'forgot_password_instruction'.tr, color: kLightPrimaryColor,),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
