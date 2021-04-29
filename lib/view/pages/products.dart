import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/products/categories.dart';
import 'package:promo_do_dia_getx/view/components/products/product_card.dart';
import 'package:promo_do_dia_getx/view/components/products/products_app_bar.dart';
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
                        Divider(
                          color: kGrey.withAlpha(100),
                          height: _.responsive.heightPercent(5)),
                        SizedBox(
                          height: _.responsive.heightPercent(63),
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: _.products.length,
                            itemBuilder: (BuildContext context, int index) =>
                                ProductCard(product: _.products[index]),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                mainAxisSpacing: _.responsive.widthPercent(4),
                                crossAxisSpacing: _.responsive.widthPercent(3)
                                ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        );
  }
}
