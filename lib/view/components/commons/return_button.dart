import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';

class ReturnButton extends StatelessWidget {
  final VoidCallback onTap;

  const ReturnButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Icon(GetPlatform.isIOS
            ? Icons.arrow_back_ios_rounded
            : Icons.arrow_back,
          color: kPrimaryColor,
        )
    );
  }
}
