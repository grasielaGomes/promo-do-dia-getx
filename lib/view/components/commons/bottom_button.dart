import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class BottomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final double heightPercentage;


  BottomButton({
    required this.heightPercentage,
    required this.icon,
    required this.text,
    required this.onTap});

  final Responsive _responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        height: _responsive.heightPercent(heightPercentage),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: _responsive.inchPercent(2.5), color: kLightPrimaryColor,),
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
