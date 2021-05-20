import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/orders_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/expanded_container.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/orders/order_product.dart';
import 'package:promo_do_dia_getx/view/components/orders/price_row.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
        builder: (_) {
          return ExpandedContainer(
              label: 'Pedido #9803',
              detailColor: kPurple,
              child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 2,
                    itemBuilder: (context, i) =>
                        OrderProduct(item: _.items[i])
                ),
              ),
              const Divider(),
              PriceRow(textLeft: 'discount'.tr, textRight: '-R\$20,00'),
              PriceRow(textLeft: 'delivery'.tr, textRight: 'R\$7,00'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InstructionText(text: 'Entregue', color: kPurple),
                  PriceRow(textLeft: 'total'.tr, textRight: 'R\$700,00'),
                ],
              )
            ],
          ));
        });
  }
}
