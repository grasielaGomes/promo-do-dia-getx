import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
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
    final String dollars = product.price.toString().split('.').first;
    final String cents = product.price.toString().split('.').last;
    final String signal = 'dot'.tr;
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: responsive.heightPercent(20),
              decoration: BoxDecoration(
                  color: kLightPrimaryColor,
                  borderRadius: BorderRadius.circular(radius)
              )
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: padding, left: padding, right: padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: size,
                  width: size,
                  child:
                  Image.asset(product.image)),
              Column(
                children: [
                  Text(product.name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: responsive.inchPercent(1.8),
                          color: kGrey)),
                  Text(product.detail,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: responsive.inchPercent(1.2),
                          color: kGrey)),
                ],
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('R\$${product.oldPrice.toStringAsFixed(0)}', style: TextStyle(
                        color: kGrey.withAlpha(50),
                        fontSize: responsive.inchPercent(2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough)),
                    Text('R\$$dollars$signal$cents',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: responsive.inchPercent(2),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: responsive.inchPercent(2.2),
          width: responsive.inchPercent(6),
          decoration: BoxDecoration(
              color: kOrange,
              borderRadius: BorderRadius.circular(radius)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_downward_rounded,
                size: responsive.inchPercent(1.2),
                color: kLightPrimaryColor,),
              Text('-${product.discount}%',
                style: TextStyle(
                    fontSize: responsive.inchPercent(1.2),
                    color: kLightPrimaryColor)),
            ],
          ),
        )
      ],
    );
  }
}
