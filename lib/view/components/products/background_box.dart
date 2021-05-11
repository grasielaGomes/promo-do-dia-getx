import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class BackgroundBox extends StatelessWidget {
  final Responsive responsive;
  final double radius;

  const BackgroundBox({
    required this.responsive,
    required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: responsive.heightPercent(20),
        decoration: BoxDecoration(
            color: kLightPrimaryColor,
            borderRadius: BorderRadius.circular(radius),
        )
    );
  }
}
