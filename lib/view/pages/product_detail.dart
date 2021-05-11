import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/bottom_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/return_button.dart';
import 'package:promo_do_dia_getx/view/components/product_detail/product_detail_price.dart';
import 'package:promo_do_dia_getx/view/components/product_detail/quantity_desired.dart';
import 'package:promo_do_dia_getx/view/components/products/discount_bagde.dart';
import 'package:promo_do_dia_getx/view/components/products/product_image.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel product;

  const ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(builder: (_) =>
        Scaffold(
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              BackgroundContainer(heightPercentage: 88),
              ContentContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: _.responsive.heightPercent(8)),
                      ProductImage(image: product.image, size: _.responsive.inchPercent(25)),
                      HeadingText.h2(text: product.name),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          HeadingText.h3(text: 'about'.tr, color: kPrimaryColor),
                          SizedBox(height: _.responsive.heightPercent(1)),
                          BodyText(text: product.description, textAlign: TextAlign.start)
                        ],
                      ),
                      Row(
                        children: [
                          HeadingText.h3(text: 'stock'.tr, color: kGrey),
                          HeadingText.h3(text: '20', color: kPrimaryColor),
                        ],
                      ),
                      ProductDetailPrice(product: product),
                      QuantityDesired(),
                      BottomButton(
                          heightPercentage: 14,
                          icon: Icons.shopping_cart_outlined,
                          text: 'add_cart'.tr,
                          onTap: (){})
                    ],

                  )),
              Container(
                padding: EdgeInsets.only(left: _.responsive.inchPercent(2)),
                alignment: Alignment.center,
                height: _.responsive.heightPercent(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReturnButton(onTap: () => _.goBack()),
                    DiscountBadge.big(discount: product.discount.toString())
                  ],
                ),
              )
            ],
          ),
    ));
  }
}
