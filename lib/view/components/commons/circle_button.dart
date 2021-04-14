import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';


class CircleButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final VoidCallback onTap;


  const CircleButton({
    this.size = 40,
    required this.icon,
    this.color = kPrimaryColor,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(size),
          boxShadow: const <BoxShadow> [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2.0, 2.0),
              blurRadius: 7,
            )
          ],
        ),
        child: FaIcon(icon, color: kLightPrimaryColor, size: size * 0.5,),
      ),
    );
  }
}
