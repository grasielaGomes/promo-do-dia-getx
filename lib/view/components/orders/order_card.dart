import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/orders_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/components/orders/order_product.dart';
import 'package:promo_do_dia_getx/view/components/orders/price_row.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
        builder: (_) {
          final double height = _.responsive.heightPercent(1);
          return Column(
            children: [
              GestureDetector(
                onTap: () => _.expandContainer(),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: height * 2),
                  height: height * 7,
                  decoration: BoxDecoration(
                      color: kLightPrimaryColor,
                      borderRadius: BorderRadius.only(
                        topRight:
                        Radius.circular(height),
                        topLeft: Radius.circular(height),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InstructionText(text: 'Pedido #5678'),
                      Icon(_.isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: kLightGrey,)],
                  ),
                ),
              ),
              AnimatedContainer(
                  curve: Curves.fastOutSlowIn,
                  onEnd: () {
                    _.finishExpand();
                  },
                  height: _.isExpanded ? height * 30 : 0,
                  padding: EdgeInsets.all(height * 2),
                  color: kLightPrimaryColor,
                  duration: const Duration(milliseconds: 300),
                  child: AnimatedOpacity(
                    curve: Curves.easeInOut,
                    duration: _.isFinished && _.isExpanded
                        ? const Duration(milliseconds: 300)
                        : const Duration(milliseconds: 100),
                    opacity: _.isFinished && _.isExpanded ? 1 : 0,
                    child: Column(
                      children: [
                        Flexible(
                          child: AnimatedList(
                              initialItemCount: 2,
                              itemBuilder: (context, i, animation) =>
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
                    ),
                  )),
              Container(
                decoration: BoxDecoration(
                    color: kPurple,
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                      Radius.circular(height * .6),
                      bottomRight:
                      Radius.circular(height * .6),
                    )),
                height: height,
                margin: EdgeInsets.only(bottom: height * 2),
              )
            ],
          );
        });
  }
}
