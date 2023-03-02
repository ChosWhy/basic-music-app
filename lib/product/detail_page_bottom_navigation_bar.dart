import 'package:basicmusicapp/consts.dart';
import 'package:basicmusicapp/datas.dart';
import 'package:flutter/material.dart';
import 'package:basicmusicapp/titles.dart';
class MyNavigationBarContainer extends StatefulWidget {
  const MyNavigationBarContainer({
    super.key,
  });

  @override
  State<MyNavigationBarContainer> createState() => _MyNavigationBarContainerState();
}

class _MyNavigationBarContainerState extends State<MyNavigationBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ProjectHeight.iconContainerHeight,
      color: Colors.black54,
      child: Padding(
        padding: ProjectPadding.bottomNavigationPaddingXSmall,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _textAndIconButton(title: ProjectTitles.titleHomePage, icon: ProjectIcons.iconHomePage, iconSize: ProjectIconSizes.largeIconSize,index: 0),
            _textAndIconButton(title: ProjectTitles.titleSearch, icon: ProjectIcons.iconSearch, iconSize: ProjectIconSizes.largeIconSize,index: 1),
            _textAndIconButton(title: ProjectTitles.titleBookCase, icon: ProjectIcons.iconBookCase, iconSize: ProjectIconSizes.largeIconSize,index: 2),
          ],
        ),
      ),
    );
  }

  InkWell _textAndIconButton({required String title,required IconData icon,required double iconSize,required int index}) {
    return InkWell(
    onTap: (){
      _toggleTheIconAndTextColor(index);
    },
    child: SizedBox(
      width: ProjectWidth.smallWidth,
      child: Column(
        children: [
          Icon(icon,size: iconSize,color: ListViewDatas.toggleBottomNavigationDetailPageColors[index] == true ? ProjectColors.white : ProjectColors.white24,),
          Text(title,style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: ListViewDatas.toggleBottomNavigationDetailPageColors[index] == true ? ProjectColors.white : ProjectColors.white24,
          ),),
        ],
      ),
    ),
  );
  }

  void _toggleTheIconAndTextColor(int index){
    return setState(() {
      if(ListViewDatas.toggleBottomNavigationDetailPageColors[index] == true){
        ListViewDatas.toggleBottomNavigationDetailPageColors[index] = true;
        for(int i = 0;i< ListViewDatas.toggleBottomNavigationDetailPageColors.length;i++){
          if(i != index){
            ListViewDatas.toggleBottomNavigationDetailPageColors[i] = false;
          }
        }
      }
      else{
        ListViewDatas.toggleBottomNavigationDetailPageColors[index] = true;
        for(int i = 0;i< ListViewDatas.toggleBottomNavigationDetailPageColors.length;i++){
          if(i != index){
            ListViewDatas.toggleBottomNavigationDetailPageColors[i] = false;
          }
        }
      }
    });
  }
}
