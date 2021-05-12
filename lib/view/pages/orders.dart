import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/orders_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/background_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/content_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_app_bar.dart';
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
                  CustomAppBar(title: 'orders'.tr)
                ],
              ))
            ],
          ),
        ));
  }
}
