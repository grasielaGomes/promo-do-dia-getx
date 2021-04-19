import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class SignUpController extends GetxController {

  bool obscure = true;
  Responsive responsive = Responsive();

  void onTapDown(TapDownDetails details) {
    obscure = false;
    update(['form']);
  }

  void onTapUp(TapUpDetails details) {
    obscure = true;
    update(['form']);
  }

  void goToSignIn (){
    Get.toNamed('/sign-in');
  }
}