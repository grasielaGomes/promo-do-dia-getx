import 'package:flutter/material.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_container.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class CreditCard extends StatelessWidget {
  final String number;
  final String name;
  final String date;
  final IconData icon;

  const CreditCard(
      {required this.number,
      required this.name,
      required this.date,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    return RoundedContainer(
        color: kGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: _responsive.heightPercent(2)),
            Text(
              number,
              style: GoogleFonts.bitter(
                  letterSpacing: 2.5,
                  textStyle: TextStyle(
                      color: kLightPrimaryColor,
                      fontSize: _responsive.inchPercent(2.5))),
            ),
            SizedBox(height: _responsive.heightPercent(6)),
            Padding(
              padding: EdgeInsets.only(right: _responsive.widthPercent(2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InstructionText(
                        text: name,
                        color: kLightPrimaryColor,
                        textAlign: TextAlign.start),
                      BodyText(
                          text: date,
                          color: kLightPrimaryColor,
                          textAlign: TextAlign.start)
                    ],
                  ),
                  Icon(icon,
                      color: kLightPrimaryColor,
                      size: _responsive.inchPercent(5)),
                ],
              ),
            )
          ],
        ));
  }
}
