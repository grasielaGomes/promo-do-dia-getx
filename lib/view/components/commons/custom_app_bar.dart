import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class CustomAppBar extends StatelessWidget{
  final String title;

  const CustomAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return Container(
      alignment: Alignment.bottomCenter,
      height: _responsive.heightPercent(12),
      width: double.maxFinite,
      child: HeadingText.h2(text: title),
    );
  }
}
