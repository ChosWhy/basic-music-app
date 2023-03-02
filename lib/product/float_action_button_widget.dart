import 'package:basicmusicapp/titles.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class CustomFloatActionBottomPlace extends StatefulWidget {
  const CustomFloatActionBottomPlace({
    super.key,
  });

  @override
  State<CustomFloatActionBottomPlace> createState() =>
      _CustomFloatActionBottomPlaceState();
}

class _CustomFloatActionBottomPlaceState
    extends State<CustomFloatActionBottomPlace> {
  static IconData _iconFloatActionButton = ProjectIcons.iconPlay;
  static IconData _iconFavorite = ProjectIcons.iconFavorite;
  final String _buttonImage = "assets/images/dark-fire.jpg";
  bool toggleTheColor = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.projectMainPadding,
      child: Container(
          width: double.infinity,
          height: ProjectHeight.customFloatActionBottomHeigth,
          decoration: const BoxDecoration(
            color: ProjectColors.blueGrey,
            borderRadius: ProjectBorderRadius.iconContainerBorderRadiusAll,
          ),
          child: Row(
            children: [
              ///image container
              Padding(
                padding: ProjectPadding.floatActionCustomPaddingLeftSmall,
                child: Container(
                    height:
                        ProjectHeight.customFloatActionBottomContainerHeigth,
                    width: ProjectWidth.customFloatActionBottomContainerWidth,
                    decoration: BoxDecoration(
                      borderRadius:
                          ProjectBorderRadius.iconContainerBorderRadiusAll,
                      image: DecorationImage(
                          image: AssetImage(_buttonImage), fit: BoxFit.cover),
                    )),
              ),

              ///texts
              Padding(
                padding: ProjectPadding.floatActionCustomPaddingLeftNormal,
                child: Container(
                  height: ProjectHeight.customFloatActionBottomContainerHeigth,
                  width: ProjectWidth.customFloatActionBottomContainerTextWidth,
                  child: Padding(
                    padding: ProjectPadding.floatActionCustomPaddingLeftSmall,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ProjectTitles.titleNumbLinkinPark,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.multitrack_audio_rounded),
                            Padding(
                              padding: ProjectPadding
                                  .floatActionCustomPaddingLeftSmall,
                              child: Text(ProjectTitles.titleLaptop),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ///Icons
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          _floatActionCustomButtonToggleTheColor();
                        },
                        icon: Icon(
                          _iconFavorite,
                          size: ProjectIconSizes.largeIconSize,
                          color: toggleTheColor == true ? ProjectColors.redAccent : ProjectColors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _floatActionCustomButtonToggleIcon();
                          },
                          icon: Icon(
                            _iconFloatActionButton,
                            size: ProjectIconSizes.largeIconSize,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void _floatActionCustomButtonToggleIcon() {
    return setState(() {
                            if(_iconFloatActionButton == ProjectIcons.iconPlay){
                              _iconFloatActionButton = ProjectIcons.iconPause;
                            }
                            else if(_iconFloatActionButton == ProjectIcons.iconPause){
                              _iconFloatActionButton = ProjectIcons.iconPlay;
                            }
                          });
  }

  void _floatActionCustomButtonToggleTheColor() {
    return setState(() {
                          if(_iconFavorite == ProjectIcons.iconFavorite){
                            _iconFavorite = ProjectIcons.iconFavoriteFil;
                            toggleTheColor = true;
                          }
                          else if(_iconFavorite == ProjectIcons.iconFavoriteFil){
                            _iconFavorite = ProjectIcons.iconFavorite;
                            toggleTheColor = false;
                          }
                        });
  }

}

///pause ve favorilere ekleem işlemini yapıcam !!!