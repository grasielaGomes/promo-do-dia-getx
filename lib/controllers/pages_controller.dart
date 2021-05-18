import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class PagesController extends GetxController{
  final Responsive responsive = Responsive();
  final PageController pController = PageController();
  String cartQuantity = '3';
  bool isHome = true;

  void goTo(int index){
    pController.jumpToPage(index);
    isHome = false;
    update(['pages']);
  }
}