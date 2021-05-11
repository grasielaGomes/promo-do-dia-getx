import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_icon_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/instruction_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class QuantityDesired extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
        id: 'quantity',
        builder: (_) {
          final double _padding = _.responsive.widthPercent(5);
          final double _height = _.responsive.heightPercent(8);
          final double _size = _height / 4;
          final double _radius = _.responsive.inchPercent(1);
          return Row(
            children: [
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: _padding),
                  height: _height,
                  decoration: BoxDecoration(
                      color: kLightPrimaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_radius),
                          bottomLeft: Radius.circular(_radius))),
                  child: BodyText(text: 'quantity'.tr)),
              ),
              Container(
                height: _height,
                width: _.responsive.widthPercent(35),
                decoration: BoxDecoration(
                    color: kLightGrey,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_radius),
                        bottomRight: Radius.circular(_radius))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      icon: Icons.add,
                      iconColor: kPrimaryColor,
                      size: _size,
                      padding: _padding,
                      onTap: () => _.incrementQuantity(),
                    ),
                    InstructionText(
                        text: _.quantityDesired.toString(),
                        color: kPrimaryColor),
                    CustomIconButton(
                      icon: Icons.remove,
                      iconColor: kPrimaryColor,
                      size: _size,
                      padding: _padding,
                      onTap: () => _.decrementQuantity(),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
