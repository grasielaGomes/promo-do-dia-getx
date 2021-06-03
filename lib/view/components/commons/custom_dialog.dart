import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/simple_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive _responsive = Responsive();
    final double _padding = _responsive.inchPercent(2);
    return Material(
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          height: _responsive.heightPercent(25),
          width: _responsive.widthPercent(80),
          child: Container(
            padding: EdgeInsets.only(top: _padding * 1.5),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(_padding / 2))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _padding),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText.h3(
                          color: kLightPrimaryColor,
                          text: 'Excluir Conta',
                        ),
                        SizedBox(height: _padding),
                        SimpleText(text: 'Tem certeza de que quer apagar todos os seus dados? Essa ação não poderá ser desfeita.'),
                      ]),
                ),
                Row(
                  children: [
                    Flexible(
                        child: GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: _padding),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: kDeepPrimaryColor.withAlpha(100),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(_padding / 2))),
                              child: InstructionText(
                                  text: 'Cancelar', color: kLightPrimaryColor)),
                        )),
                    Flexible(
                        child: GestureDetector(
                          onTap: (){},
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: _padding),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: kDeepPrimaryColor,
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(_padding / 2))),
                              child: InstructionText(
                                  text: 'Confirmar', color: kLightPrimaryColor),
                    ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
