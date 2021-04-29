import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  HeadingText({
    required this.text,
    this.color = kGrey,
    this.textAlign = TextAlign.start
  });

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: _responsive.inchPercent(3.5),
            color: color,
            letterSpacing: -1.5
        ),
        textAlign: textAlign);
  }
}
