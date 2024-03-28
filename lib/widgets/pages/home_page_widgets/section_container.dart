
import 'package:flutter/material.dart';
import 'package:shawarma_master/varibles/enum.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/section_bottom_side_title.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/section_button.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/section_image.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/section_toptitle_content.dart';

class SectionContainer extends StatelessWidget {
  final SectionType sectionType;
  final double containerWidth;
  final double containerHeight;
  final EdgeInsetsGeometry? containerMargin;
  final bool isImageBackground;
  final AlignmentGeometry? imageAlignment;
  final int index;
  final List<Map<dynamic, dynamic>> sectionList;
  final double? titleSize;
  final Offset? titleTransformOffset;
  final bool? isBottomTitleAlignmentBottom;
  const SectionContainer({
    super.key,
    required this.sectionType,
    required this.containerWidth,
    required this.containerHeight,
    this.containerMargin,
    required this.isImageBackground,
    required this.index,
    required this.sectionList,
    this.titleSize,
    this.titleTransformOffset,
    this.imageAlignment,
    this.isBottomTitleAlignmentBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: containerHeight,
      margin: containerMargin,
      decoration: BoxDecoration(
        image: isImageBackground == false
            ? null
            : DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(sectionList[index]["image"]),
              ),
        // color: Colors.blue,
        gradient: LinearGradient(
          colors: sectionList[index]["backgroundColors"],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          isImageBackground == true
              ? const SizedBox()
              : SectionImage(
                  imageAlignment: imageAlignment ?? Alignment.center,
                  imageName: sectionList[index]["image"],
                ),
          sectionType == SectionType.additionalSection
              ? const SizedBox()
              : sectionType == SectionType.itemsSection
                  ? const SizedBox()
                  : SectionTopTitleAndContent(
                      topTitleText: sectionList[index]["title"],
                      contentText: sectionList[index]["content"],
                      titleColor: sectionList[index]["titleColor"],
                      titleContentAreaPadding:
                          const EdgeInsets.only(left: 15.0),
                      titleTransformOffset:
                          titleTransformOffset ?? const Offset(0, 0),
                      titleSize: titleSize,
                    ),
          sectionType != SectionType.mainSection
              ? const SizedBox()
              : SectionButton(
                  buttonVisiblity: sectionList[index]["buttonVisiblity"],
                  buttonOnPressed: sectionList[index]["buttonFunction"],
                ),
          sectionType == SectionType.mainSection
              ? const SizedBox()
              : sectionType == SectionType.subSection
                  ? const SizedBox()
                  : SectionBottomOrSideTitle(
                      titleText: sectionList[index]["title"],
                      isBottomTitleAlignmentBottom:
                          isBottomTitleAlignmentBottom ?? true,
                    )
        ],
      ),
    );
  }
}
