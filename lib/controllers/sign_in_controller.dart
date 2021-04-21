import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class SignInController extends GetxController {

  bool obscure = true;
  final Responsive responsive = Responsive();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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

  void goForgotPassword (){
    Get.toNamed('/forgot-password');
  }

  void goUserType (){
    Get.toNamed('/user-type');
  }

  void goToProducts (){
    Get.offNamed('/products');
  }
}