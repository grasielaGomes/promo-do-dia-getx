
import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;
  final double size;
  final double padding;


  const CustomIconButton({
    required this.onTap,
    required this.icon,
    this.padding = 10,
    this.iconColor = kLightGrey,
    this.size = 30});
  

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(padding),
        color: Colors.transparent,
        child: GestureDetector(
            onTap: onTap,
            child: Icon(icon,
              color: iconColor,
              size: size,
            )
        ),
      ),
    );
  }
}