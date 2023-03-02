import 'package:basicmusicapp/consts.dart';
import 'package:basicmusicapp/datas.dart';
import 'package:basicmusicapp/product/build_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:basicmusicapp/titles.dart';
import 'detail_page_bottom_navigation_bar.dart';
import 'float_action_button_widget.dart';
import 'icon_button_statefull_widget.dart';

class CustomContainerDetailsPage extends StatelessWidget {
  const CustomContainerDetailsPage(
      {Key? key,
      required this.titleLarge,
      required this.iconOne,
      required this.iconTwo})
      : super(key: key);
  final String titleLarge;
  final IconData iconOne;
  final IconData iconTwo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: const CustomFloatActionBottomPlace(),
      appBar: AppBar(
        leading: const BackButton(),
        actions: const [
          StatefullMyIconButton(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: ProjectPadding.projectMainPadding,
          child: ListView(
            children: [
              ///ilk text
              Padding(
                padding: ProjectPadding.paddingTop,
                child: Text(titleLarge,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: ProjectColors.white)),
              ),

              ///ikinci text
              Padding(
                padding: ProjectPadding.paddingTopSmall,
                child: Text(
                  ProjectTitles.titleBestPractice,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: ProjectColors.grey),
                ),
              ),

              ///resimlerin textleri
              SizedBox(
                width: ProjectWidth.screenSize,
                height: ProjectHeight.customContainerDetailsHeigth + 10,
                child: Padding(
                  padding: ProjectPadding.paddingTopSmall,
                  child: ListView.builder(
                    itemCount:
                        ListViewDatas.customContainerDetailsImageDatas.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: index ==
                              (ListViewDatas
                                      .customContainerDetailsImageDatas.length -
                                  1)
                          ? const EdgeInsets.only(right: 0)
                          : ProjectPadding.listViewPaddingRight,
                      child: Container(
                        width: ProjectWidth.largeCustomContainerWidth,
                        height: ProjectHeight.customContainerDetailsHeigth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                ListViewDatas.customContainerDetailsImageDatas
                                    .elementAt(index),
                              ),
                              fit: BoxFit.cover),
                          borderRadius:
                              ProjectBorderRadius.normalBorderRadiusAll2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              ///ikon konteynırları
              Padding(
                padding: ProjectPadding.paddingTop,
                child: Row(
                  children: [
                    Padding(
                      padding: ProjectPadding.listViewPaddingRight,
                      child: _iconContainer(
                          icon: iconOne,
                          iconSize: ProjectIconSizes.largeIconSize),
                    ),
                    _iconContainer(
                        icon: iconTwo,
                        iconSize: (ProjectIconSizes.largeIconSize - 5)),
                  ],
                ),
              ),

              ///line
              const Padding(
                padding: ProjectPadding.paddingTop,
                child: BuildLine(),
              ),

              ///bottom text
              Padding(
                padding: ProjectPadding.smallPaddingBottomText,
                child: Text(ProjectTitles.titleDetailBottom,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: ProjectColors.grey,
                          wordSpacing: 2,
                        )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyNavigationBarContainer(),
    );
  }

  Container _iconContainer({required IconData icon, required double iconSize}) {
    return Container(
        width: ProjectWidth.iconContainerWidth,
        height: ProjectHeight.iconContainerHeight,
        decoration: const BoxDecoration(
            color: ProjectColors.white12,
            borderRadius: ProjectBorderRadius.iconContainerBorderRadiusAll),
        child: Icon(
          icon,
          size: iconSize,
        ));
  }
}
