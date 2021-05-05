import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/pages_controller.dart';
import 'package:promo_do_dia_getx/view/components/products/cart_quantity.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_bottom_bar.dart';
import 'package:promo_do_dia_getx/view/pages/products.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class AllPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagesController>(
        init: PagesController(),
        builder: (_) => Scaffold(
          body: Stack(
            children: [
              PageView(
                controller: _.pController,
                children: [
                  Products(),
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: _.responsive.inchPercent(2)),
                      child: CustomBottomBar(height: _.responsive.heightPercent(12)))),
              Positioned(
                  bottom: _.responsive.heightPercent(8.5),
                  right: _.responsive.widthPercent(6),
                  child: CartQuantity()
              )
            ],
          ),
        )
    );
  }
}