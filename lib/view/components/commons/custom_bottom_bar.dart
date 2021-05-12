import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/controllers/pages_controller.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class CustomBottomBar extends StatelessWidget {
  final double height;
  const CustomBottomBar({required this.height});

  @override
  Widget build(BuildContext context) {
    final Color btColor = kGrey.withAlpha(90);
    return GetBuilder<PagesController>(
        id: 'pages',
        builder: (_) => SizedBox(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: const Icon(Icons.store_outlined),
                      color: _.pController.page == 0 ? kPrimaryColor : btColor,
                      onPressed: () => _.goTo(0)),
                  IconButton(
                      icon: const Icon(Icons.receipt_outlined),
                      color: _.pController.page == 1 ? kPrimaryColor : btColor,
                      onPressed: () => _.goTo(1)),
                  IconButton(
                      icon: const Icon(Icons.account_circle_outlined),
                      color: _.pController.page == 2 ? kPrimaryColor : btColor,
                      onPressed: () => _.goTo(2)),
                  IconButton(
                      icon: const Icon(Icons.chat_bubble_outline_rounded),
                      color: _.pController.page == 3 ? kPrimaryColor : btColor,
                      onPressed: () => _.goTo(3)),
                  Container(
                    margin: EdgeInsets.only(
                        right: height * .08, bottom: height * .2),
                    height: height * .65,
                    width: height * .65,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(height),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(-2, 4),
                              blurRadius: height * .04,
                              color: Colors.black12)
                        ]),
                    child: const Icon(Icons.shopping_cart_outlined,
                        color: kLightPrimaryColor),
                  )
                ],
              ),
            ));
  }
}
