import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class BackgroundContainer extends StatelessWidget {

  final Widget child;
  final double height;
  final double padding;

  const BackgroundContainer({
    required this.height,
    this.padding = 30,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kLightPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kInch * 0.04),
            bottomRight: Radius.circular(kInch * 0.04),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                blurRadius: kInch * 0.04,
                color: Colors.black26)
          ]),

      child: child,
    );
  }
}