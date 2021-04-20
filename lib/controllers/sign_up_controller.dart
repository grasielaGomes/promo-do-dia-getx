import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class SignUpController extends GetxController {

  bool obscure = true;
  final Responsive responsive = Responsive();
  final TextEditingController userController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();

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