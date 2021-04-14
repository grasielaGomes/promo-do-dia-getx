import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;


  const RoundedButton({
    required this.text,
    this.color = kPrimaryColor,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: kInch * 0.06,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kInch * 0.03),
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
            Icon(Icons.arrow_forward_rounded, size: kInch * 0.02, color: kLightPrimaryColor),
            SizedBox(width: kWidth * 0.01),
            InstructionText(
                text: text,
                color: kLightPrimaryColor)
          ],
        ),
      ),
    );
  }
}
