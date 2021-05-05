import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/products/categories.dart';
import 'package:promo_do_dia_getx/view/components/products/product_card.dart';
import 'package:promo_do_dia_getx/view/components/products/products_app_bar.dart';
import 'package:promo_do_dia_getx/view/components/products/search_field.dart';
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
                  height: _.responsive.heightPercent(90),
                ),
                ContentContainer(
                    child: Column(
                      children: [
                        ProductsAppBar(),
                        SizedBox(height: _.isSearching ? _.responsive.heightPercent(2) : 0),
                        if(_.isSearching)
                          SearchField(),
                        Categories(),
                        Padding(
                          padding: EdgeInsets.only(top: _.responsive.heightPercent(1)),
                          child: Divider(color: kGrey.withAlpha(100)),
                        ),
                        SizedBox(
                          height: _.isSearching ? _.responsive.heightPercent(57.5) : _.responsive.heightPercent(65.8),
                          child: GridView.builder(
                            padding: EdgeInsets.only(top: _.responsive.heightPercent(2)),
                            itemCount: _.products.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                mainAxisSpacing: _.responsive.widthPercent(4),
                                crossAxisSpacing: _.responsive.widthPercent(3)
                            ),
                            itemBuilder: (context, index) =>
                                ProductCard(product: _.products[index]),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )
        );
  }
}
