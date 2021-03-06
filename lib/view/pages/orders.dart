import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/orders_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_app_bar.dart';
import 'package:promo_do_dia_getx/view/components/orders/order_card.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
        init: OrdersController(),
        builder: (_) => Scaffold(
          backgroundColor: kLightPrimaryColor,
          body: Stack(
            children: [
              BackgroundContainer(heightPercentage: 90),
              ContentContainer(child: Column(
                children: [
                  CustomAppBar(title: 'orders'.tr),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: _.responsive.heightPercent(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.access_time, color: kLightGrey),
                        SizedBox(width: _.responsive.widthPercent(2)),
                        BodyText(text: 'Oct 12, 14:00', color: kLightGrey)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _.responsive.heightPercent(2)),
                    height: _.responsive.heightPercent(63.9),
                    child: OrderCard(),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
