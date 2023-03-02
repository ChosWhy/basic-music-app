import 'package:flutter/material.dart';

import '../consts.dart';
import '../datas.dart';

class StatefullMyIconButton extends StatefulWidget {
  const StatefullMyIconButton({
    super.key,
  });

  @override
  State<StatefullMyIconButton> createState() => _StatefullMyIconButtonState();
}

class _StatefullMyIconButtonState extends State<StatefullMyIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          _toggleTheIconButtonColor();
        },
        icon: Icon(
          ProjectIcons.iconFavoriteFil,
          color: VariableDatas.toggleIconFavorite == false
              ? ProjectColors.white
              : ProjectColors.redAccent,
        ));
  }

  void _toggleTheIconButtonColor() {
    return setState(() {
          if (VariableDatas.toggleIconFavorite == true) {
            VariableDatas.toggleIconFavorite = false;
          } else {
            VariableDatas.toggleIconFavorite = true;
          }
        });
  }
}
