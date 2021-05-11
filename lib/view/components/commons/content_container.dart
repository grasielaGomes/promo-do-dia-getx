import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;
  final double paddingPercent;

  const ContentContainer({
    required this.child,
    this.paddingPercent = 3,
  });

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return Container(
      height: _responsive.heightPercent(100),
        padding: EdgeInsets.symmetric(
            horizontal: _responsive.inchPercent(paddingPercent)),
        child: child
    );
  }
}
