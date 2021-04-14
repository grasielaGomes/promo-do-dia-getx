import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class BottomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final double height;


  const BottomButton({
    required this.height,
    required this.icon,
    required this.text,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: kInch * 0.025, color: kLightPrimaryColor,),
            const SizedBox(width: 8),
            InstructionText(
                text: text,
                color: kLightPrimaryColor)
          ],
        ),
      ),
    );
  }
}
