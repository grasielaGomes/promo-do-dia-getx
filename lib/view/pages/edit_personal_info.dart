import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/editions_controller.dart';
import 'package:promo_do_dia_getx/view/components/account/info_header.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/bottom_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_app_bar.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/return_button.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class EditPersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditionsController>(
        init: EditionsController(),
        builder: (_) =>
        Scaffold(
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              BackgroundContainer(heightPercentage: 88),
              ContentContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomAppBar(title: 'personal_info'.tr),
                      HeadingText.h3(
                          text: 'address'.tr,
                          color: kGrey.withAlpha(150)),
                      BottomButton(
                          heightPercentage: 14,
                          icon: Icons.save_rounded,
                          text: 'save'.tr,
                          onTap: (){})
                    ],
                  )),
              Container(
                padding: EdgeInsets.only(left: _.responsive.inchPercent(2)),
                alignment: Alignment.center,
                height: _.responsive.heightPercent(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReturnButton(onTap: () => _.goBack()),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
