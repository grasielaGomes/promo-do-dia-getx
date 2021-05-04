import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class DiscountBadge extends StatelessWidget {
  final Responsive responsive;
  final double radius;
  final String discount;


  const DiscountBadge({
    required this.responsive,
    required this.radius,
    required this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsive.inchPercent(2.2),
      width: responsive.inchPercent(6),
      decoration: BoxDecoration(
          color: kOrange,
          borderRadius: BorderRadius.circular(radius * 2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_downward_rounded,
            size: responsive.inchPercent(1.2),
            color: kLightPrimaryColor,),
          Text('-$discount%',
              style: TextStyle(
                  fontSize: responsive.inchPercent(1.2),
                  color: kLightPrimaryColor)),
        ],
      ),
    );
  }
}
