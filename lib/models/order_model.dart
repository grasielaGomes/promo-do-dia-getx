
import 'package:promo_do_dia_getx/models/status_enum.dart';

import 'cart_items_model.dart';

class OrderModel {
  DateTime date;
  String orderId;
  List<CartItemModel> items;
  int quantity;
  num price;
  num deliveryPrice;
  num margin;
  String userId;
  Status status;

  String get formattedId => '#${orderId.padLeft(6, '0')}';

  OrderModel(
      {required this.date,
      required this.orderId,
      required this.items,
      required this.quantity,
      required this.price,
      required this.deliveryPrice,
      required this.margin,
      required this.userId,
      required this.status});

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      date: map['date'] as DateTime,
      orderId: map['orderId'] as String,
      items: (map['items'] as List<CartItemModel>).map((e) =>
          CartItemModel.fromMap(e as Map<String, dynamic>)).toList(),
      quantity: map['quantity'] as int,
      price: map['price'] as num,
      deliveryPrice: map['deliveryPrice'] as num,
      margin: map['margin'] as num,
      userId: map['userId'] as String,
      status: map['status'] as Status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'orderId': orderId,
      'items': items,
      'quantity': quantity,
      'price': price,
      'deliveryPrice': deliveryPrice,
      'margin': margin,
      'userId': userId,
      'status': status,
    };
  }
}