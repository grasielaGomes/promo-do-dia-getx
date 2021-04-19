import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
        init: ProductsController(),
        builder: (_) {
          return Scaffold(
            backgroundColor: kLightPrimaryColor,
            body: Column(
              children: [
                BackgroundContainer(
                    height: _.responsive.heightPercent(90),
                    child: Column(
                      children: [],
                    )),
              ],
            ),
          );
        });
  }
}
