import 'package:promo_do_dia_getx/models/product_model.dart';

class CartItemModel {
  int quantity;
  ProductModel product;

  CartItemModel(
      {required this.quantity,
      required this.product});

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      quantity: map['quantity'] as int,
      product: map['product'] as ProductModel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'product': product,
    };
  }
}