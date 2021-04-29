import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class BackgroundContainer extends StatelessWidget {

  final double height;

  BackgroundContainer({
    required this.height,
  });

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {

    final double _radius = _responsive.inchPercent(4);

    return Hero(
      tag: 'back',
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
            ),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -4),
                  blurRadius: _radius / 2,
                  color: Colors.black12)
            ]),
      ),
    );
  }
}