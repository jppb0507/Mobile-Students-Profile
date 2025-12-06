import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String path;
  final double height;

  const CustomImage({
    super.key,
    required this.path,
    this.height = 120,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
