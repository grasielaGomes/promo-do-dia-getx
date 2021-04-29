import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/products_controller.dart';
import 'package:promo_do_dia_getx/view/components/products/category_button.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
        id: 'categories',
        builder: (_) => SizedBox(
            height: _.responsive.heightPercent(6),
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: _.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryButton(
                  isSelected: _.categoryLabel == _.categories[index],
                  label: _.categories[index],
                  onTap: (){
                    _.categoryLabel = _.categories[index];
                    _.select(index);
                  },
                );
              }
            )));
  }
}
