import 'package:flutter/services.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';
import 'package:rive/rive.dart';
import 'package:get/get.dart';

import 'package:promo_do_dia_getx/view/pages/sign_in.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SplashController extends GetxController {

  Responsive responsive = Responsive();

  Artboard riveArtboard = RuntimeArtboard();
  late RiveAnimationController _controller;

  @override
  void onReady() {
    super.onReady();
    rootBundle.load(kLogoSplash).then(
          (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('animation1'));
        riveArtboard = artboard;
      },
    );
    Future.delayed(const Duration(milliseconds: 1800), (){
      Get.off(() => SignIn(), transition: Transition.upToDown);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

}