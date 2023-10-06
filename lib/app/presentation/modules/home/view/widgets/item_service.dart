import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../data/helpers/colors.dart';
import '../../../../../data/helpers/typography.dart';

class ItemService extends StatelessWidget {
  ItemService(
      {super.key,
      required this.title,
      required this.content,
      required this.icon,
      required this.hover,}
  );

  final String title;
  final String content;
  final IconData icon;
  final bool hover;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? 66.sw : 65.sw,
      height: hover ? 91.sw : 90.sw,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(30),
        border: hover ? Border.all(color: bgColor2, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 10.sw,
            color: Colors.white,
          ),
          SizedBox(height: 10,),
          Text(
            title,
            style: montserratStyle(color: Colors.white),
          ),
          SizedBox(height: 10,),

          Text(
            content,
            style: normalStyle(size: 2),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
