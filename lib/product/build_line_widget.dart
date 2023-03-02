import 'package:flutter/material.dart';

import '../consts.dart';

class BuildLine extends StatelessWidget {
  const BuildLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: ProjectWidth.lineWidth * 6),
      child: Container(
        color: ProjectColors.blue,
        height: ProjectHeight.lineHeigth,
      ),
    );
  }
}
