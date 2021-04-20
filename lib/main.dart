import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/pages/forgot_password.dart';
import 'package:promo_do_dia_getx/view/pages/products.dart';
import 'package:promo_do_dia_getx/view/pages/sign_in.dart';
import 'package:promo_do_dia_getx/view/pages/sign_up.dart';
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
      fallbackLocale: const Locale('en', 'US'),
      title: 'Promo do Dia',
      theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: kPrimaryColor
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splash(), transition: Transition.fadeIn),
        GetPage(name: '/sign-in', page: () => SignIn(), transition: Transition.fade),
        GetPage(name: '/sign-up', page: () => SignUp(), transition: Transition.fade),
        GetPage(name: '/forgot-password', page: () => ForgotPassword(), transition: Transition.fade),
        GetPage(name: '/products', page: () => Products(), transition: Transition.fadeIn),
      ],
    );
  }
}

