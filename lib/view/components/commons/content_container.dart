import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;
  final double percent;

  const ContentContainer({
    required this.child,
    this.percent = 3,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return Container(
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: _responsive.inchPercent(percent)),
        child: child
    );
  }
}
