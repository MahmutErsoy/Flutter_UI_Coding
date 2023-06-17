import 'package:flutter/material.dart';

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});

  final String name;

  String get _nameWithPath => "assets/png/$name.png";

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath);
  }
}
