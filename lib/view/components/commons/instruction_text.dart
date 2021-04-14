import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class InstructionText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const InstructionText({
    required this.text,
    this.color = kGrey,
    this.textAlign = TextAlign.center
  });

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: kInch * 0.0155,
            color: color
        ),
        textAlign: textAlign);
  }
}
