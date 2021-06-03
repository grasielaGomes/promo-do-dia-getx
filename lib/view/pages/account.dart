import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/account_controller.dart';
import 'package:promo_do_dia_getx/view/components/account/info_column.dart';
import 'package:promo_do_dia_getx/view/components/account/info_header.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/credit_card.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_app_bar.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_dialog.dart';
import 'package:promo_do_dia_getx/view/components/commons/rounded_container.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountController>(
        init: AccountController(),
        builder: (_) => Scaffold(
          backgroundColor: kLightPrimaryColor,
          body: Stack(
            children: [
              BackgroundContainer(heightPercentage: 90),
              ContentContainer(child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomAppBar(title: 'account'.tr),
                  SizedBox(
                    height: _.responsive.heightPercent(78),
                    child: ListView(
                      padding: EdgeInsets.only(top: _.responsive.heightPercent(2)),
                      children: [
                        InfoHeader(title: 'personal_info'.tr,
                            onTap: () => _.goToPersonalInfo()),
                        RoundedContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                InfoColumn.name(info: 'Grasiela Gomes da Silva'),
                                InfoColumn.address(info: 'Rua Olimpio Moreira, 480, Interlagos, Divinópolis, MG'),
                                InfoColumn.email(info: 'grasiela@e-lead.com.br'),
                                InfoColumn.phone(info: '31 991947363')
                              ],
                            )),
                        InfoHeader(title: 'payment_info'.tr,
                            onTap: () => _.goToCreditCardInfo()),
                        CreditCard(creditCard: _.creditCard),
                        RoundedContainer(
                            onTap: (){},
                            child: Row(
                              children: [
                                const Icon(Icons.exit_to_app_rounded, color: kPrimaryColor,),
                                SizedBox(width: _.responsive.widthPercent(2)),
                                BodyText(text: 'Sair da conta')
                              ],
                        )),
                        RoundedContainer(
                            onTap: () => Get.dialog(CustomDialog()),
                            child: Row(
                              children: [
                                const Icon(Icons.delete_rounded, color: kPrimaryColor,),
                                SizedBox(width: _.responsive.widthPercent(2)),
                                BodyText(text: 'Excluir conta')
                              ],
                            )),
                      ]),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}