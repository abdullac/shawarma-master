import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shawarma_master/logics/make_section_wdgets.dart';
import 'package:shawarma_master/varibles/enum.dart';
import 'package:shawarma_master/varibles/lists.dart';
import 'package:shawarma_master/widgets/pages/home_page_widgets/silver_appbar.dart';

double screenWidth = 100;
double screenHeight = 100;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    Size screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled) => [
          const SilverAppBarWidget(),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      mainSectionWidgets(),
                      const Divider(
                        height: 8,
                        thickness: 0.5,
                      ),
                      subSectionWidgets(),
                      subSectionWidgets2(),
                      const Divider(
                        height: 8,
                        thickness: 0.5,
                      ),
                      additionalSectionWidgets(),
                      const Divider(
                        height: 8,
                        thickness: 0.5,
                      ),
                      itemsSectionWidgets(),
                      const Divider(
                        height: 2,
                        thickness: 0.5,
                      ),
                      itemsSectionWidgets2(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget mainSectionWidgets() {
  return makeSectionWidgets(
    sectionList: mainSectionList,
    sectionType: SectionType.mainSection,
  );
}

Widget subSectionWidgets() {
  return makeSectionWidgets(
    sectionList: subSectionShawayaList,
    sectionType: SectionType.subSection,
  );
}

Widget subSectionWidgets2() {
  return makeSectionWidgets(
    sectionList: subSectionShawarmaList,
    sectionType: SectionType.subSection,
  );
}

Widget additionalSectionWidgets() {
  return makeSectionWidgets(
    sectionList: additioanalSectionShawarmaList,
    sectionType: SectionType.additionalSection,
  );
}

Widget itemsSectionWidgets() {
  return makeSectionWidgets(
    sectionList: itemsSectionShawarmaList,
    sectionType: SectionType.itemsSection,
  );
}

Widget itemsSectionWidgets2() {
  return makeSectionWidgets(
    sectionList: itemsSectionShawayaList,
    sectionType: SectionType.itemsSection,
  );
}










          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Transform.scale(
          //     alignment: Alignment.bottomCenter,
          //     scaleX: 0.6,
          //     child: const Icon(
          //       Icons.keyboard_double_arrow_right_rounded,
          //       color: Colors.black,
          //       size: 100,
          //     ),
          //   ),
          // ),