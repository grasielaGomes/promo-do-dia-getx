import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_icon_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class InfoHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const InfoHeader({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    final double size = _responsive.heightPercent(1);
    return Container(
      margin: EdgeInsets.only(left: size * 2, top: size),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingText.h3(
              text: title,
              color: kGrey.withAlpha(150)),
          CustomIconButton(
            onTap: onTap,
            icon: Icons.edit_rounded,
            size: _responsive.inchPercent(2.4),
            iconColor: kGrey,
          )
        ],
      ),
    );
  }
}
