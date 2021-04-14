import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imagePath;
  final double width;


  const ImageBox({required this.imagePath, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image(image: AssetImage(imagePath)),
    );
  }
}

