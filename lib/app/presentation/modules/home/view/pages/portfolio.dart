import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../controller/home_provider.dart';
import '../widgets/item_portfolio.dart';
import '../widgets/title_area.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return _portfolioContent();
  }

  Widget _portfolioContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 20),
      child: Column(
        children: [
          TitleArea(
            primero: 'Ultimos',
            segundo: 'Proyectos',
          ),
          const SizedBox(height: 20.0),
          GridView.builder(
            itemCount: homeProvider.read().imagesPortfolio.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (Device.screenType == ScreenType.tablet) ? 3 : 2,
              // mainAxisExtent: 400,
              childAspectRatio: 1 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              var reversedImages = homeProvider.read().imagesPortfolio.reversed.toList();
              var reversedImageList = homeProvider.read().listImagesPortfolio.reversed.toList();

              var image = reversedImages[index];
              var imageList = reversedImageList[index];

              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: ItemPortfolio(
                  imagePortada: image,
                  imagesList: imageList,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
