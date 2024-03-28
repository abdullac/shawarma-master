import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shawarma_master/varibles/enum.dart';
import 'package:shawarma_master/widgets/pages/home_page/home_page.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/section_container.dart';

Widget makeSectionWidgets({
  required List<Map<dynamic, dynamic>> sectionList,
  required SectionType sectionType,
}) {
  double containerWidth = sectionType == SectionType.subSection
      ? screenWidth * .75
      : double.infinity;
  double containerHeight = sectionType == SectionType.mainSection
      ? screenWidth * .45
      : sectionType == SectionType.subSection
          ? screenHeight * .18
          : double.infinity;
  double marginVertical = sectionType == SectionType.mainSection
      ? 8
      : sectionType == SectionType.subSection
          ? 8
          : sectionType == SectionType.itemsSection
              ? 6
              : sectionType == SectionType.additionalSection
                  ? 6
                  : 0;

  double marginHorizontal = sectionType == SectionType.mainSection
      ? 0
      : sectionType == SectionType.subSection
          ? 4
          : sectionType == SectionType.itemsSection
              ? 6
              : sectionType == SectionType.additionalSection
                  ? 6
                  : 0;

  bool isImageBackground =
      sectionType == SectionType.itemsSection ? true : false;

  AlignmentGeometry? imageAlignment = sectionType == SectionType.mainSection
      ? Alignment.centerRight
      : sectionType == SectionType.subSection
          ? Alignment.centerRight
          : sectionType == SectionType.additionalSection
              ? Alignment.center
              : null;

  double titleSize = sectionType == SectionType.mainSection
      ? 40
      : sectionType == SectionType.subSection
          ? 22
          : 15;

  Offset titleTransformOffset = sectionType == SectionType.mainSection
      ? const Offset(0, -20)
      : sectionType == SectionType.subSection
          ? const Offset(0, 0)
          : const Offset(0, 0);

  bool? isBottomTitleAlignmentBottom = sectionType == SectionType.mainSection
      ? null
      : sectionType == SectionType.subSection
          ? null
          : sectionType == SectionType.itemsSection
              ? true
              : sectionType == SectionType.additionalSection
                  ? true
                  : null;

  List<Widget> tempWidgetsList = [];
  int index = 0;
  for (index; index < sectionList.length; index++) {
    tempWidgetsList.add(
      SectionContainer(
        sectionType: sectionType,
        containerWidth: containerWidth,
        containerHeight: containerHeight,
        containerMargin: EdgeInsets.symmetric(
            vertical: marginVertical, horizontal: marginHorizontal),
        index: index,
        sectionList: sectionList,
        isImageBackground: isImageBackground,
        imageAlignment: imageAlignment,
        titleSize: titleSize,
        titleTransformOffset: titleTransformOffset,
        isBottomTitleAlignmentBottom: isBottomTitleAlignmentBottom,
      ),
    );
  }

  Widget sectionWidgets = sectionType == SectionType.mainSection
      ? Column(
          children: tempWidgetsList,
        )
      : sectionType == SectionType.subSection
          ? Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: tempWidgetsList,
                  ),
                ),
                const RightWardArrow(),
              ],
            )
          : sectionType == SectionType.additionalSection
              ? SizedBox(
                  // height: 600,
                  height: (screenWidth - 36) * 155 / 100,
                  // color: const Color.fromARGB(255, 245, 191, 191),
                  child: Padding(
                    // padding: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(7.0),
                    child: GridView.count(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 1 / 1,
                      crossAxisCount: 2,
                      // mainAxisSpacing: 10,
                      // crossAxisSpacing: 10,
                      children: tempWidgetsList,
                    ),
                  ),
                )
              : sectionType == SectionType.itemsSection
                  ? SizedBox(
                      // height: 635,
                      height: (screenWidth - 16) * 205 / 100,
                      // color: const Color.fromARGB(255, 248, 224, 224),
                      child: Padding(
                        // padding: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: GridView.count(
                          padding: const EdgeInsets.all(0),
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 1 / 1,
                          crossAxisCount: 2,
                          // mainAxisSpacing: 15,
                          // crossAxisSpacing: 15,
                          children: tempWidgetsList,
                        ),
                      ),
                    )
                  : const SizedBox();

  return sectionWidgets;
}

bool isFiveMinutLater = false;
class RightWardArrow extends StatefulWidget {
  const RightWardArrow({
    super.key,
  });

  @override
  State<RightWardArrow> createState() => _RightWardArrowState();
}

class _RightWardArrowState extends State<RightWardArrow> {
  delayTimer() {
    Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
         setState(() {
          isFiveMinutLater =true;
          });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      top: 0,
      child: Transform.scale(
        alignment: Alignment.centerRight,
        scaleX: 0.6,
        origin: const Offset(20, 0),
        child: Visibility(
          visible: !isFiveMinutLater,
          child: const Icon(
            Icons.keyboard_double_arrow_right_rounded,
            color: Colors.white24,
            size: 100,
          ),
        ),
      ),
    );
  }
}
