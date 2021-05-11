import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductPrice extends StatelessWidget {
  final ProductModel product;
  final Color oldColor;
  final Color color;
  final double textSizePercentage;

  const ProductPrice.card({required this.product})
      : oldColor = kLightGrey,
        color = kPrimaryColor,
        textSizePercentage = 2;

  const ProductPrice.detail({required this.product})
      : oldColor = kDeepPrimaryColor,
        color = kWhite,
        textSizePercentage = 3;

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            'price'.trParams({
              'dollar': product.oldPrice.toString().split('.').first,
              'cents': product.oldPrice.toStringAsFixed(1).split('.').last
            })!,
            style: TextStyle(
                color: oldColor,
                fontSize: _responsive.inchPercent(textSizePercentage),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough)),
        Text(
          'price'.trParams({
            'dollar': product.price.toString().split('.').first,
            'cents': product.price.toStringAsFixed(2).split('.').last
          })!,
          style: TextStyle(
              color: color,
              fontSize: _responsive.inchPercent(textSizePercentage),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
