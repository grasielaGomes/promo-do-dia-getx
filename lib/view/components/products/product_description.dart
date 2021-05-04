import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductDescription extends StatelessWidget {
  final Responsive responsive;
  final String productName;
  final String productDetail;

  const ProductDescription({
        required this.responsive,
        required this.productName,
        required this.productDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(productName,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            maxLines: 2,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: responsive.inchPercent(1.8),
                color: kGrey)),
        Text(productDetail,
            overflow: TextOverflow.fade,
            style: TextStyle(
                fontSize: responsive.inchPercent(1.2),
                color: kGrey)),
      ],
    );
  }
}
