import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class AccountController extends GetxController {
  final Responsive responsive = Responsive();

  void goToPersonalInfo (){
    Get.toNamed('/edit-personal-info');
  }

}