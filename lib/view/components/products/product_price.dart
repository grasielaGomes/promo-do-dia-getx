import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductPrice extends StatelessWidget {
  final String price;
  final String oldPrice;
  final Responsive responsive;

  const ProductPrice({
    required this.price,
    required this.oldPrice,
    required this.responsive});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('R\$$oldPrice', style: TextStyle(
            color: kGrey.withAlpha(50),
            fontSize: responsive.inchPercent(2),
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough)),
        Text('R\$$price',
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: responsive.inchPercent(2),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
