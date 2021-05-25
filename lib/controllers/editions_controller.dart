import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class EditionsController extends GetxController {

  final Responsive responsive = Responsive();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController cepController = TextEditingController();

  List<String?> values = ['Olímpio Moreira', '140', 'apto 101', 'Interlagos', 'Divinópolis', 'Mg'];
  String zip = '35.500-474';
  bool isLoading = true;

  void goBack(){
    Get.back();
  }

  void clearInitialValue(){
    isLoading = !isLoading;
    update(['zipCode', 'personalForm']);
  }
}