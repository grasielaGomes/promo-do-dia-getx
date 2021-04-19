import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;


  RoundedButton({
    required this.text,
    this.color = kPrimaryColor,
    required this.onTap});

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: _responsive.inchPercent(6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(_responsive.inchPercent(3)),
          boxShadow: const <BoxShadow> [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2.0, 2.0),
              blurRadius: 7,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_rounded, size: _responsive.inchPercent(2), color: kLightPrimaryColor),
            SizedBox(width: _responsive.inchPercent(1)),
            InstructionText(
                text: text,
                color: kLightPrimaryColor)
          ],
        ),
      ),
    );
  }
}
