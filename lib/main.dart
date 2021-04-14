import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/pages/splash.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/translations.dart';

void main() {
  runApp(PromoDoDia());
}

class PromoDoDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      title: 'Promo do Dia',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: kPrimaryColor
      ),
      home: Splash(),
    );
  }
}

