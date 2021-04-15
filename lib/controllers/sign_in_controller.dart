import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {

  bool obscure = true;

  void onTapDown(TapDownDetails details) {
    obscure = false;
    update(['form']);
  }

  void onTapUp(TapUpDetails details) {
    obscure = true;
    update(['form']);
  }

  void goToSignUp (){
    Get.offNamed('/sign-up');
  }

  void goToProducts (){
    Get.offNamed('/products');
  }
}