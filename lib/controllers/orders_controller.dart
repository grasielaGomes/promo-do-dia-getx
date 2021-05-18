
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/cart_items_model.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class OrdersController extends GetxController {
  Responsive responsive = Responsive();

  ProductModel product1 = ProductModel(productId: '#01', image: kImage1, name: 'Creme Dental', detail: 'Oral-B 70g', description: '', oldPrice: 3.0, price: 1.98, discount: 15);
  late List<CartItemModel> items = [
    CartItemModel(quantity: 1, product: product1),
    CartItemModel(quantity: 3, product: product1)
  ];

  bool isExpanded = false;
  bool isFinished = false;

  void finishExpand(){
    isFinished = !isFinished;
    update();
  }

  void expandContainer(){
    isExpanded = !isExpanded;
    update();
  }


}