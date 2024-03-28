import 'package:flutter/material.dart';

class SectionBottomOrSideTitle extends StatelessWidget {
  final String titleText;
  final bool isBottomTitleAlignmentBottom;
  const SectionBottomOrSideTitle({
    super.key,
    required this.titleText,
    required this.isBottomTitleAlignmentBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBottomTitleAlignmentBottom == true
          ? Alignment.bottomCenter
          : Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          titleText,
          textAlign: isBottomTitleAlignmentBottom == true
              ? TextAlign.center
              : TextAlign.right,
          style: const TextStyle(
            fontFamily: "M Plus Rounded",
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black54,
                blurRadius: 9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
