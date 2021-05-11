import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(builder: (_) =>
        Theme(
          data: Theme.of(context).copyWith(
              primaryColor: kOrange,
              textSelectionTheme: const TextSelectionThemeData(
                cursorColor: kOrange)),
          child: TextFormField(
            controller: _.tController,
            decoration: InputDecoration(
              labelText: 'label_search'.tr,
              isDense: true,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: kLightGrey),
                  borderRadius: BorderRadius.circular(_.responsive.heightPercent(20))),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () => _.stopSearching())
            ),
          ),
        )
    );
  }
}
