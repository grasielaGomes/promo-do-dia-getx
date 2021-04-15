import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/splash_controller.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:rive/rive.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
      return Scaffold(
        backgroundColor: kLightPrimaryColor,
        body: Center(
          child: SizedBox(
            height: kInch * 0.35,
            width: kInch * 0.35,
            child: Rive(
              artboard: _.riveArtboard,
            ),
          ),
        ),
      );
    });
  }
}
