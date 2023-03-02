import 'package:basicmusicapp/datas.dart';
import 'package:basicmusicapp/product/build_line_widget.dart';
import 'package:basicmusicapp/product/custom_float_action_bottom_place.dart';
import 'package:basicmusicapp/titles.dart';
import 'package:flutter/material.dart';
import 'consts.dart';
import 'core/custom_container.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectTitles.appBarTitle,
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(
              color: ProjectColors.white,
              fontWeight: FontWeight.w500,
            )),
        actions: const [
          Padding(
            padding: ProjectPadding.appBarPaddingRight,
            child: Icon(
              ProjectIcons.iconSearch,
              size: ProjectIconSizes.normalIconSize,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: ProjectPadding.projectMainPadding,
          child: ListView(
            children: [

              ///line
              const BuildLine(),

              ///row place
              Padding(
                padding: ProjectPadding.projectCardVerticalPadding,
                child: SizedBox(
                  width: ProjectWidth.screenSize,
                  height: ProjectHeight.smallHeigth,
                  child: ListView.builder(
                    itemCount: ListViewDatas.listViewTitleDatas.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        Padding(
                          padding:
                          index == (ListViewDatas.listViewTitleDatas.length - 1)
                              ? const EdgeInsets.only(right: 0)
                              : ProjectPadding.listViewPaddingRight,
                          child: _buildCategoryCard(
                              title: ListViewDatas.listViewTitleDatas
                                  .elementAt(index),
                              index: index,
                              color: ListViewDatas.listViewTitleDatasColor
                                  .elementAt(index)),
                        ),
                  ),
                ),
              ),

              ///row text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ProjectTitles.titleRecommended,
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: ProjectColors.grey),
                  ),
                  Text(
                    ProjectTitles.titleSeeAll,
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: ProjectColors.grey),
                  ),
                ],
              ),

              ///slider custom container place
              Padding(
                padding: ProjectPadding.paddingTop,
                child: SizedBox(
                  width: ProjectWidth.screenSize,
                  height: ProjectHeight.largeCustomCardHeigth,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                    ListViewDatas.customContainerStringsContent.length,
                    itemBuilder: (context, index) =>
                        Padding(
                          padding: index ==
                              (ListViewDatas
                                  .customContainerStringsContent.length -
                                  1)
                              ? const EdgeInsets.only(right: 0)
                              : ProjectPadding.listViewPaddingRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (
                                    context) => CustomContainerDetailsPage(
                                  iconTwo: ListViewDatas.customContainerIconsContent.values.elementAt(index),
                                  iconOne: ListViewDatas.customContainerIconsContent.keys.elementAt(index),
                                  titleLarge: ListViewDatas.customContainerStringsContent.keys.elementAt(index),
                                ),));
                            },
                            child: CustomContainer(
                              width: ProjectWidth.largeCustomContainerWidth,
                              heigth: ProjectHeight.largeCustomCardHeigth,
                              color: ListViewDatas.customContainerColorContent
                                  .elementAt(index),
                              child: _buildSliderChildContent(
                                context: context,
                                title: ListViewDatas
                                    .customContainerStringsContent.keys
                                    .elementAt(index),
                                subTitle: ListViewDatas
                                    .customContainerStringsContent.values
                                    .elementAt(index),
                                iconOne: ListViewDatas
                                    .customContainerIconsContent.keys
                                    .elementAt(index),
                                iconTwo: ListViewDatas
                                    .customContainerIconsContent.values
                                    .elementAt(index),
                              ),
                            ),
                          ),
                        ),
                  ),
                ),
              ),

              ///recent text
              Padding(
                padding: ProjectPadding.projectCardVerticalPadding,
                child: Text(ProjectTitles.titleRecent,
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: ProjectColors.grey)),
              ),

              ///bottom list container
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        width: ProjectWidth.midCustomCardWidth,
                        heigth: ProjectHeight.midCustomCardHeigth,
                        color: ProjectColors.green,
                        child: _buildMidWidthCustomContainerContent(
                            title: ProjectTitles.titleCalmingSounds,
                            icon: ProjectIcons.iconHeadphones),
                      ),
                      CustomContainer(
                        width: ProjectWidth.midCustomCardWidth,
                        heigth: ProjectHeight.midCustomCardHeigth,
                        color: ProjectColors.redAccent,
                        child: _buildMidWidthCustomContainerContent(
                            title: ProjectTitles.titleInsomnia,
                            icon: ProjectIcons.iconFilm),
                      ),
                    ],
                  ),
                  Padding(
                    padding: ProjectPadding.paddingTop,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          width: ProjectWidth.midCustomCardWidth,
                          heigth: ProjectHeight.midCustomCardHeigth,
                          color: ProjectColors.yellow,
                          child: _buildMidWidthCustomContainerContent(
                              title: ProjectTitles.titleForChildren,
                              icon: ProjectIcons.iconChild),
                        ),
                        CustomContainer(
                          width: ProjectWidth.midCustomCardWidth,
                          heigth: ProjectHeight.midCustomCardHeigth,
                          color: ProjectColors.blue,
                          child: _buildMidWidthCustomContainerContent(
                              title: ProjectTitles.titleTipsForSleeping,
                              icon: ProjectIcons.iconBed),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: ProjectHeight.bottomNavigationBarHeigth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _myIconButton(icon: ProjectIcons.iconCompass,index: 0),
            _myIconButton(icon: ProjectIcons.iconBar,index: 1),
            _myIconButton(icon: ProjectIcons.iconPerson,index: 2),

          ],
        ),
      ),
    );
  }

  IconButton _myIconButton({required int index, required IconData icon}) {
    return IconButton(
        onPressed: () {
          _toggleTheColorBottomNavigationBar(index);
        },
        icon: Icon(
          icon,
          size: ProjectIconSizes.smallIconSize,
          color: ListViewDatas.toggleBottomNavigationColors.elementAt(index) ==
              true ? ProjectColors.blue : ProjectColors.grey,
        ));
  }


  Column _buildMidWidthCustomContainerContent(
      {required String title, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme
              .of(context)
              .textTheme
              .headlineSmall,
        ),
        const Spacer(),
        Icon(
          icon,
          size: ProjectIconSizes.smallIconSize,
        ),
      ],
    );
  }

  Column _buildSliderChildContent({required BuildContext context,
    required String title,
    required String subTitle,
    required IconData iconOne,
    required IconData iconTwo}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme
              .of(context)
              .textTheme
              .headlineSmall,
        ),
        Text(
          subTitle,
          style: Theme
              .of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white70),
        ),
        const Spacer(),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  iconOne,
                  size: ProjectIconSizes.smallIconSize,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  iconTwo,
                  size: ProjectIconSizes.smallIconSize,
                )),
          ],
        ),
      ],
    );
  }

  InkWell _buildCategoryCard(
      {required String title, required int index, required Color color}) {
    return InkWell(
      onTap: () {
        _toggleTheColor(index);
      },
      child: Container(
        height: ProjectHeight.smallHeigth,
        width: ProjectWidth.smallWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: ProjectBorderRadius.normalBorderRadiusAll,
        ),
        child: Center(
            child: Text(
              title,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            )),
      ),
    );
  }


  ///listView.builder ile toggle!!!!!!!
  void _toggleTheColor(int index) {
    return setState(() {
      if (ListViewDatas.listViewTitleDatasColor[index] == ProjectColors.blue) {
        ListViewDatas.listViewTitleDatasColor[index] = ProjectColors.blue;
        for (int i = 0; i <
            ListViewDatas.listViewTitleDatasColor.length - 1; i++) {
          if (index != i) {
            ListViewDatas.listViewTitleDatasColor[i] = ProjectColors.white12;
          }
        }
      }
      else if (ListViewDatas.listViewTitleDatasColor[index] ==
          ProjectColors.white12) {
        ListViewDatas.listViewTitleDatasColor[index] = ProjectColors.blue;
        for (int i = 0; i <
            ListViewDatas.listViewTitleDatasColor.length - 1; i++) {
          if (index != i) {
            ListViewDatas.listViewTitleDatasColor[i] = ProjectColors.white12;
          }
        }
      }
    });
  }

  ///3 lü row icon changed color toggle!!!
  void _toggleTheColorBottomNavigationBar(int index) {
    return setState(() {
      if (ListViewDatas.toggleBottomNavigationColors[index] == true) {
        ListViewDatas.toggleBottomNavigationColors[index] = true;
        for (int i = 0; i <
            ListViewDatas.toggleBottomNavigationColors.length; i++) {
          if (i != index) {
            ListViewDatas.toggleBottomNavigationColors[i] = false;
          }
        }
      }
      else {
        ListViewDatas.toggleBottomNavigationColors[index] = true;
        for (int i = 0; i <
            ListViewDatas.toggleBottomNavigationColors.length; i++) {
          if (i != index) {
            ListViewDatas.toggleBottomNavigationColors[i] = false;
          }
        }
      }
    });
  }

}

///yapamdıklarım animasyon ekliyemedim _buildLİne companentine!
///birde gridView'i alttaki 2 customContainer a ekliyemedim sayfa içinde!