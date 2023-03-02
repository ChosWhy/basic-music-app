import 'package:basicmusicapp/titles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'consts.dart';
import 'package:flutter/material.dart';

class ListViewDatas{
  static List<String> listViewTitleDatas = [
    ProjectTitles.titleInsomnia,
    ProjectTitles.titleDepression,
    ProjectTitles.titleBabySleep,
    ProjectTitles.titleSadMix,
    ProjectTitles.titleMetallicaMix,
    ProjectTitles.titleHappyMix,
    ProjectTitles.titleTrend,
    ProjectTitles.titlePop,
  ];
  static List<Color> listViewTitleDatasColor = [
    ProjectColors.blue,
    ProjectColors.white12,
    ProjectColors.white12,
    ProjectColors.white12,
    ProjectColors.white12,
    ProjectColors.white12,
    ProjectColors.white12,
    ProjectColors.white12,
  ];

  static const Map<String,String> customContainerStringsContent = {
    ProjectTitles.titleSleepMeditation : ProjectTitles.title7DayAudioSeries,
    ProjectTitles.titleMeditation : ProjectTitles.title5DayAudioSeries,
    ProjectTitles.titleRelaxing : ProjectTitles.title3DayAudioSeries,
    ProjectTitles.titleHappyFeeling : ProjectTitles.title2DayAudioSeries,
  };
  static Map<IconData,IconData> customContainerIconsContent = {
    Icons.headphones : FontAwesomeIcons.film,
    Icons.sports_gymnastics_outlined : FontAwesomeIcons.film,
    FontAwesomeIcons.restroom : FontAwesomeIcons.film,
    FontAwesomeIcons.faceSmile : FontAwesomeIcons.film,
  };
  static const List<Color> customContainerColorContent = [
    ProjectColors.blue,
    ProjectColors.redAccent,
    ProjectColors.yellow,
    ProjectColors.green,
  ];

  static const String _imageOne = "assets/images/huzurlu-yasam.jpg";
  static const String _imageTwo = "assets/images/huzurlu2.jpg";
  static const String _imageThree = "assets/images/huzurlu3.jpg";
  static const List<String> customContainerDetailsImageDatas = [
    _imageOne,
    _imageTwo,
    _imageThree,
  ];

  static List<bool> toggleBottomNavigationColors = [true,false,false];
  static List<bool> toggleBottomNavigationDetailPageColors = [true,false,false];
}

class VariableDatas{
  static bool toggleIconFavorite = false;
}
