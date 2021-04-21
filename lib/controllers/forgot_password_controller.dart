
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ForgotPasswordController extends GetxController {

  final Responsive responsive = Responsive();
  final TextEditingController mailController = TextEditingController();

  void goToEmailSent (){
    Get.offNamed('/email-sent');
  }

}