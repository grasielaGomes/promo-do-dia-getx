import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/pages_controller.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class CartQuantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagesController>(
        id: 'cart',
        builder: (_) => Container(
          alignment: Alignment.center,
          height: _.responsive.heightPercent(4),
          width: _.responsive.heightPercent(4),
          decoration: BoxDecoration(
              color: kDeepPrimaryColor,
              borderRadius: BorderRadius.circular(_.responsive.heightPercent(4))
          ),
          child: Text(_.cartQuantity, style: const TextStyle(color: kLightPrimaryColor),),
        )
    );
  }
}
