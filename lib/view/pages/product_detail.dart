import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/return_button.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(builder: (_) =>
        Scaffold(
          body: Stack(
            children: [
              BackgroundContainer(
                  height: _.responsive.heightPercent(75)),
              ContentContainer(
                  child: Column(
                    children: [
                      SizedBox(height: _.responsive.heightPercent(7)),
                      ReturnButton(onTap: () => _.goBack())
                ],
              ))
            ],
          ),
    ));
  }
}
