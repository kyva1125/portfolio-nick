import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_nick_flutter/app/data/helpers/colors.dart';

import '../../../../../data/helpers/typography.dart';
import '../widgets/title_area.dart';

class MySkins extends StatelessWidget {
  const MySkins({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TitleArea(primero: 'Mis', segundo: 'Habilidades',),
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _itemSkin(),
            _itemSkin(),
            _itemSkin(),
          ],
        ),
      ],
    );
  }

  Widget _itemSkin() {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: bgColor2, width: 2.0),
      ),
      child: Center(
        child: FaIcon(
          FontAwesomeIcons.fire,
          color: bgColor2,
          size: 40.0,
        ),
      ),
    );
  }


}
