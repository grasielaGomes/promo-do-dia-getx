import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {

  bool obscure = true;

  void onTapDown(TapDownDetails details) {
    obscure = false;;
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