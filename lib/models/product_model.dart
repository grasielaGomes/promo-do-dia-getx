class ProductModel {
  String image;
  String name;
  String detail;
  String description;
  double oldPrice;
  double price;
  int discount;

  ProductModel(
      {required this.image,
      required this.name,
      required this.detail,
      required this.description,
      required this.oldPrice,
      required this.price,
      required this.discount});

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      image: map['image'] as String,
      name: map['name'] as String,
      detail: map['detail'] as String,
      description: map['description'] as String,
      oldPrice: map['oldPrice'] as double,
      price: map['price'] as double,
      discount: map['discount'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'name': name,
      'detail': detail,
      'description': description,
      'oldPrice': oldPrice,
      'price': price,
      'discount': discount,
    };
  }
}
