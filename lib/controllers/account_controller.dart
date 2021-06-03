import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/credit_card_model.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class AccountController extends GetxController {
  final Responsive responsive = Responsive();
  final CreditCardModel creditCard = CreditCardModel(number: '4567 8907 2345 6789', cardHolder: 'Grasiela G da Silva', expirationDate: '01/27', cvv: '123');

  void goToPersonalInfo (){
    Get.toNamed('/edit-personal-info');
  }

  void goToCreditCardInfo (){
    Get.toNamed('/edit-credit-info');
  }

}