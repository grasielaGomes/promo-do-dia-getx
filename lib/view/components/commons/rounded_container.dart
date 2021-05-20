import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback? onTap;

  const RoundedContainer({
    this.onTap,
    required this.child,
    this.color = kLightPrimaryColor});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    final double size = _responsive.heightPercent(1);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size),
        padding: EdgeInsets.all(size * 2),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(size))),
        child: child,
      ),
    );
  }
}
