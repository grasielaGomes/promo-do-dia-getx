import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/image_box.dart';
import 'package:promo_do_dia_getx/view/components/commons/return_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class EmailSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive();
    return Scaffold(
      body: Stack(
        children: [
          BackgroundContainer(
              height: responsive.heightPercent(40)),
          ContentContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: responsive.heightPercent(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: ReturnButton(onTap: () => Get.toNamed('/sign-in'))),
                      ImageBox(
                          imagePath: kLogo,
                          width: responsive.inchPercent(18)),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: responsive.heightPercent(60),
                  child: BodyText(text: 'email_sent'.tr, color: kLightPrimaryColor,),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
