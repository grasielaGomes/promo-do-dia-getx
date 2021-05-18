import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class PriceRow extends StatelessWidget {
  final String textLeft;
  final String textRight;

  const PriceRow({required this.textLeft, required this.textRight});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return Padding(
      padding: EdgeInsets.only(top: _responsive.heightPercent(.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BodyText(text: textLeft,
              color: kGrey.withAlpha(100),
          ),
          SizedBox(width: _responsive.widthPercent(5)),
          SizedBox(
            width: _responsive.widthPercent(24),
              child: BodyText(text: textRight, textAlign: TextAlign.right,)),
        ],
      ),
    );
  }
}
