import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/components/products/background_box.dart';
import 'package:promo_do_dia_getx/view/components/products/discount_bagde.dart';
import 'package:promo_do_dia_getx/view/components/products/product_description.dart';
import 'package:promo_do_dia_getx/view/components/products/product_image.dart';
import 'package:promo_do_dia_getx/view/components/products/product_price.dart';
import 'package:promo_do_dia_getx/view/pages/product_detail.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive();
    final double radius = responsive.inchPercent(1);
    final double padding = responsive.inchPercent(1.2);
    final double size = responsive.inchPercent(15);


    return GestureDetector(
      onTap: () => Get.to(() => ProductDetail(product: product)),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BackgroundBox(
              radius: radius,
              responsive: responsive),
          ),
          Container(
            padding: EdgeInsets.only(bottom: padding, left: padding, right: padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductImage(
                    image: product.image,
                    size: size),
                ProductDescription(
                    productName: product.name,
                    productDetail: product.detail,
                    responsive: responsive),
                Flexible(
                  child: ProductPrice.card(product: product),
                ),
              ],
            ),
          ),
          DiscountBadge.small(discount: product.discount.toString())
        ],
      ),
    );
  }
}
