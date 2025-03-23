import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../data/helpers/typography.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key, required this.primero, required this.segundo});

  final String primero, segundo;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        duration: const Duration(milliseconds: 1200),
        child: RichText(
          text: TextSpan(
            text: '$primero ',
            style: headingStyles(),
            children: [
              TextSpan(
                text: '$segundo',
                style: headingStyles(color: Colors.red),
              )
            ],
          ),
        ));
  }
}
