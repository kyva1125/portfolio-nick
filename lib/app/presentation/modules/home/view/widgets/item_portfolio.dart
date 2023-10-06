import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../data/helpers/typography.dart';

class ItemPortfolio extends StatelessWidget {
  ItemPortfolio({super.key, required this.hoveredIndex, required this.image, required this.index});

  final hoveredIndex;
  final String image;
  final int index;

  final onH0verEffect = Matrix4.identity()..scale(1.0);



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
        ),
        Visibility(
          visible: index == hoveredIndex,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            transform: index == hoveredIndex ? onH0verEffect : null,
            curve: Curves.easeIn,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // gradient: LinearGradient(
              //     colors: [
              //       // AppColors.themeColor.withOpacity(1.0),
              //       // AppColors.themeColor.withOpacity(0.9),
              //       // AppColors.themeColor.withOpacity(0.8),
              //       // AppColors.themeColor.withOpacity(0.6),
              //     ],
              //     begin: Alignment.bottomCenter,
              //     end: Alignment.topCenter
              //
              // ),
            ),
            child: Column(
              children: [
                Text(
                  'App Development',
                  style: montserratStyle(color: Colors.black87),
                ),
                SizedBox(height: 15.0),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                  style: normalStyle(color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/nick_without.png",
                    width: 25,
                    height: 25,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
