import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class BackgroundContainer extends StatelessWidget {

  final Widget child;
  final double height;

  BackgroundContainer({
    required this.height,
    required this.child,
  });

  final Responsive _responsive = Responsive();


  @override
  Widget build(BuildContext context) {

    final double _radius = _responsive.inchPercent(4);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.isPhone && context.isPortrait
          ? _responsive.widthPercent(10)
          : _responsive.widthPercent(50)),
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(_radius),
            bottomRight: Radius.circular(_radius),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                blurRadius: _radius,
                color: Colors.black26)
          ]),

      child: child,
    );
  }
}