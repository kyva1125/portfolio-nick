import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_nick_flutter/app/data/helpers/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../../../data/helpers/typography.dart';
import '../widgets/title_area.dart';

class MySkins extends StatelessWidget {
  const MySkins({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 20),
      child: Column(
        spacing: 10,
        children: [
          TitleArea(
            primero: 'Mis',
            segundo: 'Habilidades',
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              _itemSkin(FontAwesomeIcons.flutter),
              _itemSkin(FontAwesomeIcons.dartLang),
              _itemSkin(FontAwesomeIcons.fire),
              _itemSkin(FontAwesomeIcons.android),
              _itemSkin(FontAwesomeIcons.apple),
              _itemSkin(FontAwesomeIcons.java),
              _itemSkin(FontAwesomeIcons.js),
              _itemSkin(FontAwesomeIcons.node),
              _itemSkin(FontAwesomeIcons.figma),
              _itemSkin(FontAwesomeIcons.git),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemSkin(
    IconData icon
) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.white,
      child: FittedBox(
        child: FaIcon(icon, color: bgColor2,)
      ),
    );
  }
}
