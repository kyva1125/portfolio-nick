import 'package:flutter/material.dart';
import 'package:flutter_meedu/screen_utils.dart';

import '../../../../../data/helpers/colors.dart';
import '../../../../../data/helpers/typography.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
        width:  context.width,
        color: Colors.white,
        child: Center(
          child: Text(
            "Derechos NO reservados (Compaltan Compaltan) 2025",
            style: montserratStyle(color: bgColor2),
          ),
        ));
  }
}
