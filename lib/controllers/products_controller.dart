import 'package:get/get.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductsController extends GetxController {

  final Responsive responsive = Responsive();

  void goToSignIn (){
    Get.offNamed('/sign-in');
  }
}