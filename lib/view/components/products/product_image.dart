import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final double size;

  const ProductImage({
    required this.image,
    required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: size,
          width: size,
          child:
          Image.asset(image)),
    );
  }
}
