import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/credit_card_model.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class EditionsController extends GetxController {

  final Responsive responsive = Responsive();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> creditFormKey = GlobalKey<FormState>();
  final TextEditingController cepController = TextEditingController();

  List<String?> values = ['Olímpio Moreira', '140', 'apto 101', 'Interlagos', 'Divinópolis', 'Mg'];
  String zip = '35.500-474';
  bool isLoading = true;

  CreditCardModel creditCard = CreditCardModel(number: '4567 8907 2345 6789', cardHolder: 'Grasiela G da Silva', expirationDate: '01/27', cvv: '123');

  void goBack(){
    Get.back();
  }

  void clearInitialValue(){
    isLoading = !isLoading;
    update(['zipCode', 'personalForm']);
  }
}