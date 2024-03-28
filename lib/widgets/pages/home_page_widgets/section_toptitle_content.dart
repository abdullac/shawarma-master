import 'package:flutter/material.dart';

class SectionTopTitleAndContent extends StatelessWidget {
  final String? topTitleText;
  final String? contentText;
  final Color titleColor;
  final double? titleSize;
  final EdgeInsetsGeometry titleContentAreaPadding;
  final Offset titleTransformOffset;
  final List<Shadow>? titleShadows;
  const SectionTopTitleAndContent({
    super.key,
    this.topTitleText,
    this.contentText,
    required this.titleColor,
    this.titleSize,
    required this.titleContentAreaPadding,
    required this.titleTransformOffset,
    this.titleShadows,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.only(left: 15.0),
      padding: titleContentAreaPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          topTitleText == null
              ? const SizedBox()
              : Transform.translate(
                  // offset: const Offset(0, -20),
                  offset: titleTransformOffset,
                  child: Text(
                    topTitleText ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Chancery",
                      fontWeight: FontWeight.w900,
                      // fontSize: 30,
                      fontSize: titleSize,
                      color: titleColor,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.6),
                          blurRadius: 5,
                          offset: const Offset(6.5, 6.5),
                        ),
                        Shadow(
                          color: Colors.white.withOpacity(0.8),
                          blurRadius: 2,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      // shadows: titleShadows,
                    ),
                  ),
                ),
          contentText == null
              ? const SizedBox()
              : Text(
                  contentText ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "ML Nanthini",
                    fontSize: 14.5,
                    color: Colors.white70,
                    shadows: [
                      Shadow(
                        color: Colors.white,
                        blurRadius: 5,
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
