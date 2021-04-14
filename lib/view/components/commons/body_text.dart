
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const BodyText({
    required this.text,
    this.color = kGrey,
    this.textAlign = TextAlign.center
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: kInch * 0.016,
            color: color
        ),
        textAlign: textAlign);
  }
}
