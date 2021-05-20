
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  BodyText({
    required this.text,
    this.color = kGrey,
    this.textAlign = TextAlign.center
  });

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return Text(text,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: _responsive.inchPercent(1.6),
            color: color
        ),
        textAlign: textAlign);
  }
}
