import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:promo_do_dia_getx/models/credit_card_model.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_container.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class CreditCard extends StatelessWidget {
  final CreditCardModel creditCard;

  const CreditCard(
      {required this.creditCard});

  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    final int length = creditCard.number.length;
    return RoundedContainer(
        color: kGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: _responsive.heightPercent(2)),
            Text(creditCard.number.replaceRange(5, length - 4, '******** '),
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
                        text: creditCard.cardHolder,
                        color: kLightPrimaryColor,
                        textAlign: TextAlign.start),
                      BodyText(
                          text: creditCard.expirationDate,
                          color: kLightPrimaryColor,
                          textAlign: TextAlign.start)
                    ],
                  ),
                  Icon(creditCard.number[0] == '4'
                      ? FontAwesomeIcons.ccVisa
                      : creditCard.cardType(creditCard.number),
                      color: kLightPrimaryColor,
                      size: _responsive.inchPercent(5)),
                ],
              ),
            )
          ],
        ));
  }
}
