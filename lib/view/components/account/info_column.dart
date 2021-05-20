import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/components/commons/body_text.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class InfoColumn extends StatelessWidget {

  final String title;
  final String info;

  InfoColumn.name({required this.info})
      : title = 'name'.tr;

  InfoColumn.address({required this.info})
      : title = 'address'.tr;

  InfoColumn.email({required this.info})
      : title = 'email'.tr;

  InfoColumn.phone({required this.info})
      : title = 'phone'.tr;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BodyText(
              text: title,
              color: kGrey.withAlpha(100),
              textAlign: TextAlign.start),
          BodyText(
              text: info,
              textAlign: TextAlign.start)
        ],
      ),
    );
  }
}
