import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/components/products/product_price.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductDetailPrice extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPrice({required this.product});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(_responsive.inchPercent(10))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _responsive.inchPercent(1.5),
              vertical: _responsive.inchPercent(1)),
          child: ProductPrice.detail(product: product),
        ),
      ),
    );
  }
}
