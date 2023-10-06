import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_provider.dart';

import '../../../../../data/helpers/colors.dart';
import '../../../../../data/helpers/typography.dart';

class ItemService extends StatelessWidget {
  ItemService(
      {super.key,
      required this.title,
      required this.asset,
      required this.hover,
      this.width = 350,
      this.hoverWidth = 360});

  final String title;
  final String asset;
  final bool hover;
  final double width;
  final double hoverWidth;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 400 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: bgColor2, width: 3) : null,
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
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: bgColor2,
          ),
          SizedBox(height: 30.0),
          Text(
            title,
            style: montserratStyle(
                color: Colors.white),
          ),
          SizedBox(height: 12.0),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: normalStyle(),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          // ElevatedButton(child: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
