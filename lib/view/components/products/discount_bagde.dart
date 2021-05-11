import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

final Responsive _responsive = Responsive();

class DiscountBadge extends StatelessWidget {
  final double height;
  final double width;
  final double size;
  final Radius radius;
  final Radius radius2;
  final String discount;

  DiscountBadge.small({required this.discount})
      : height = _responsive.inchPercent(2.2),
        width = _responsive.inchPercent(6),
        radius = Radius.circular(_responsive.inchPercent(6)),
        radius2 = Radius.circular(_responsive.inchPercent(6)),
        size = _responsive.inchPercent(1.2);

  DiscountBadge.big({required this.discount})
      : height = _responsive.inchPercent(5.5),
        width = _responsive.inchPercent(12),
        radius = Radius.circular(_responsive.inchPercent(10)),
        radius2 = Radius.zero,
        size = _responsive.inchPercent(2.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: kOrange,
          borderRadius: BorderRadius.only(
              topLeft: radius,
              bottomLeft: radius,
              topRight: radius2,
              bottomRight: radius2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_downward_rounded,
            size: size,
            color: kLightPrimaryColor,
          ),
          Text('-$discount%',
              style: TextStyle(fontSize: size, color: kLightPrimaryColor)),
        ],
      ),
    );
  }
}
