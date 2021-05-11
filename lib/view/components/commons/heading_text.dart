import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;
  final double textSize;
  final double letterSpacing;

  HeadingText.h1({required this.text, required this.color})
      : textAlign = TextAlign.start,
        textSize = 3.5,
        letterSpacing = -1.5;

  HeadingText.h2({required this.text})
      : color = kGrey,
        textAlign = TextAlign.start,
        textSize = 2.5,
        letterSpacing = -1;

  HeadingText.h3({required this.text, required this.color})
      : textAlign = TextAlign.start,
        textSize = 2,
        letterSpacing = -.5;

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: _responsive.inchPercent(textSize),
            color: color,
            letterSpacing: letterSpacing
        ),
        textAlign: textAlign);
  }
}
