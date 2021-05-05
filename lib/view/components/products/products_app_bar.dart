import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/components/commons/custom_icon_button.dart';
import 'package:promo_do_dia_getx/view/components/commons/heading_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';


class ProductsAppBar extends StatelessWidget {
  final ProductsController controller = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: controller.responsive.heightPercent(8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                HeadingText(text: 'hi'.tr, color: kPrimaryColor),
                HeadingText(text: 'Grasiela 👋'),
              ],
            ),
            CustomIconButton(
              onTap: controller.searching,
              icon: Icons.search_rounded,
              size: controller.responsive.inchPercent(4),)
          ],
        ),
        BodyText(text: 'catch_offers'.tr)
      ],
    );
  }
}
