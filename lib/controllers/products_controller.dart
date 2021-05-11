import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:promo_do_dia_getx/models/product_model.dart';
import 'package:promo_do_dia_getx/view/utils/constants.dart';
import 'package:promo_do_dia_getx/view/utils/responsive.dart';

class ProductsController extends GetxController {

  final Responsive responsive = Responsive();

  bool isSearching = false;
  bool isSelected = false;
  String categoryLabel = '';
  int quantityDesired = 0;

  TextEditingController tController = TextEditingController();

  List<String> categories = ['category_all'.tr, 'category_cleaning'.tr, 'category_personal_care'.tr, 'category_food'.tr, 'category_cleaning'.tr, 'category_personal_care'.tr,];
  List<ProductModel> products = [
    ProductModel(image: kImage1, name: 'Creme Dental', detail: 'Oral-B 70g', description: '', oldPrice: 3.0, price: 1.98, discount: 15),
    ProductModel(image: kImage2, name: 'Protetor Solar', detail: 'Nivea 30ftp - 200ml', description: 'Protetor solar para corpo e rosto. Nivea Sun Protect & Bronze. Bronzeado natural com Betacaroteno.  FPT 30 - 200ml.',oldPrice: 37, price: 32, discount: 18),
    ProductModel(image: kImage3, name: 'Desinfetante Lysoform', detail: '1 Litro', description: '',oldPrice: 9.9, price: 8.8, discount: 10),
    ProductModel(image: kImage4, name: 'Hidratante Corporal', detail: 'Nivea Milk - 400ml', description: '',oldPrice: 10, price: 15, discount: 20),
    ProductModel(image: kImage5, name: 'Protetor Solar', detail: 'Nivea 50ftp - 125ml', description: '',oldPrice: 30, price: 20, discount: 25),
    ProductModel(image: kImage6, name: 'Desodorante Masculino', detail: 'Rexona 48h- 90g', description: '',oldPrice: 37, price: 32, discount: 18),
    ProductModel(image: kImage7, name: 'Desodorante Masculino', detail: 'Rexona ExtraCool - 90g', description: '',oldPrice: 9.9, price: 8.8, discount: 10),
    ProductModel(image: kImage8, name: 'Desodorante Feminino', detail: 'Rexona 48h - 90g', description: '',oldPrice: 30, price: 20, discount: 25),
  ];

  @override
  void onInit() {
    categoryLabel = categories[0];
    super.onInit();
  }

  void goToSignIn (){
    Get.offNamed('/sign-in');
  }

  void goBack (){
    Get.back();
  }

  void searching(){
    isSearching = !isSearching;
    update();
  }

  void stopSearching(){
    tController.clear();
    update();
  }

  void incrementQuantity(){
    quantityDesired++;
    update(['quantity']);
  }

  void decrementQuantity(){
    if (quantityDesired > 0){
      quantityDesired--;
    }
    update(['quantity']);
  }

  void select (int index){
    if(categoryLabel == categories[index]){
      isSelected = !isSelected;
      update();
    }
  }
}