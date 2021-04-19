import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class InstructionText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  InstructionText({
    required this.text,
    this.color = kGrey,
    this.textAlign = TextAlign.center
  });

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: _responsive.inchPercent(1.5),
            color: color
        ),
        textAlign: textAlign);
  }
}
