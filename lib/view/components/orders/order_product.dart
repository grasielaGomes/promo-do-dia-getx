import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/orders_controller.dart';
import 'package:promo_do_dia_getx/models/cart_items_model.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/orders/price_row.dart';

class OrderProduct extends StatelessWidget {
  final CartItemModel item;

  const OrderProduct({required this.item});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
        id: 'price',
        builder: (_)
    {
      final double totalPrice = item.product.price * item.quantity.toDouble();
      return Padding(
        padding: EdgeInsets.only(bottom: _.responsive.heightPercent(.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: BodyText(text: item.product.name)),
            PriceRow(
                textLeft: item.quantity.toString(),
                textRight: 'price'.trParams({
                  'dollar': totalPrice
                      .toString()
                      .split('.')
                      .first,
                  'cents': totalPrice
                      .toStringAsFixed(2)
                      .split('.')
                      .last
                })!)
          ],
        ),
      );
    });
  }
}
