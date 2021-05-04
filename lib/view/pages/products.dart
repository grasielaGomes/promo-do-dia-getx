import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/products/cart_quantity.dart';
import 'package:promo_do_dia_getx/view/components/products/categories.dart';
import 'package:promo_do_dia_getx/view/components/products/product_card.dart';
import 'package:promo_do_dia_getx/view/components/products/products_app_bar.dart';
import 'package:promo_do_dia_getx/view/components/products/products_bottom_bar.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
        init: ProductsController(),
        builder: (_) => Scaffold(
            backgroundColor: kLightPrimaryColor,
            body: Stack(
              children: [
                BackgroundContainer(
                    height: _.responsive.heightPercent(90)),
                ContentContainer(
                    child: Column(
                      children: [
                        ProductsAppBar(),
                        Categories(),
                        Padding(
                          padding: EdgeInsets.only(top: _.responsive.heightPercent(1)),
                          child: Divider(color: kGrey.withAlpha(100)),
                        ),
                        SizedBox(
                          height: _.responsive.heightPercent(65.5),
                          child: GridView.builder(
                            padding: EdgeInsets.only(top: _.responsive.heightPercent(2)),
                            itemCount: _.products.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                mainAxisSpacing: _.responsive.widthPercent(4),
                                crossAxisSpacing: _.responsive.widthPercent(3)),
                            itemBuilder: (context, index) =>
                                ProductCard(product: _.products[index]),
                          ),
                        )
                      ],
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: _.responsive.inchPercent(2)),
                        child: ProductsBottomBar(height: _.responsive.heightPercent(12)))),
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
