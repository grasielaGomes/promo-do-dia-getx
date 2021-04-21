import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';


class RoundedButtonOutlined extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onTap;


  RoundedButtonOutlined({
    required this.text,
    this.borderColor = kLightPrimaryColor,
    this.textColor = kLightPrimaryColor,
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
          color: Colors.transparent,
          border: Border.all(color: borderColor, width: 2),
          borderRadius: BorderRadius.circular(_responsive.inchPercent(3)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_rounded, size: _responsive.inchPercent(2), color: textColor),
            SizedBox(width: _responsive.inchPercent(1)),
            InstructionText(
                text: text,
                color: textColor)
          ],
        ),
      ),
    );
  }
}
