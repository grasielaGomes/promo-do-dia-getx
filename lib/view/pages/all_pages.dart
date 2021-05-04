import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/pages_controller.dart';
import 'package:promo_do_dia_getx/view/pages/products.dart';

class AllPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagesController>(
        init: PagesController(),
        builder: (_) => Scaffold(
          body: PageView(
            children: [
              Products()
            ],
          ),
        )
    );
  }
}