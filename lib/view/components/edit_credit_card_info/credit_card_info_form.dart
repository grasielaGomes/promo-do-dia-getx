import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/editions_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/credit_card.dart';
import 'package:promo_do_dia_getx/view/components/commons/output_field.dart';

class CreditCardInfoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditionsController>(
        id: 'creditForm',
        builder: (_) {
          return Form(
              key: _.creditFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CreditCard(creditCard: _.creditCard),
                  SizedBox(height: _.responsive.heightPercent(4)),
                  OutputField(
                    label: 'credit card number',
                    initialValue: _.creditCard.number,
                    onSaved: (value) => _.values[0] = value,
                    validator: (value){},
                  ),
                  OutputField(
                    label: 'credit card holder',
                    initialValue: _.creditCard.cardHolder,
                    onSaved: (value) => _.values[0] = value,
                    validator: (value){},
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: OutputField(
                          label: 'Expiration',
                          initialValue: _.creditCard.expirationDate,
                          validator: (value){},
                        ),
                      ),
                      SizedBox(width: _.responsive.widthPercent(4)),
                      Flexible(
                        child: OutputField(
                          label: 'CVV',
                          initialValue: _.creditCard.cvv,
                          validator: (value){},
                        ),
                      ),
                    ],
                  ),
                  OutputField(
                    label: 'CPF',
                    initialValue: '045.143.286-00',
                    validator: (value){},
                  ),
                ],
              ));
        }
    );
  }
}
