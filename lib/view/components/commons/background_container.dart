import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:get/get.dart';

class BackgroundContainer extends StatelessWidget {

  final Widget child;
  final double height;

  const BackgroundContainer({
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.isPhone && context.isPortrait
          ? kWidth * 0.1
          : kWidth * 0.5),
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
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