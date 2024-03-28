import 'package:flutter/material.dart';

class SectionImage extends StatelessWidget {
  final AlignmentGeometry imageAlignment;
  final String imageName;
  const SectionImage({
    super.key,
    required this.imageName,
    required this.imageAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: imageAlignment,
      child: Image.asset(imageName),
    );
  }
}
