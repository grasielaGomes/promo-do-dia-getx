
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class SimpleText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  SimpleText({
    required this.text,
    this.color = kLightPrimaryColor,
    this.textAlign = TextAlign.start
  });

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: _responsive.inchPercent(1.6),
            color: color
        ),
        textAlign: textAlign);
  }
}
