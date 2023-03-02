import 'package:flutter/material.dart';
import '../consts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.width,
    required this.heigth,
    required this.child,
    required this.color,
  });

  final double width;
  final double heigth;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        image: const DecorationImage(
          opacity: 0.25,
          image: AssetImage("assets/images/wave.jpg"),
          fit: BoxFit.cover,
        ),
        //arkaplanına resim atadım ve opacity ile de opaklıgını ayarladık!
        //backgroundBlendMode: BlendMode.color, koyulastırma yapıyor coloru arkaplana atıyor!
        color: color,
        borderRadius: ProjectBorderRadius.normalBorderRadiusAll2,
      ),
      child: Padding(
        padding: ProjectPadding.projectCustomContainerPaddingAll,
        child: child,
      ),
    );
  }
}
