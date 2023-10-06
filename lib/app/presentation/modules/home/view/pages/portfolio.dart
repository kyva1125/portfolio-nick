import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../data/helpers/typography.dart';
import '../../controller/home_provider.dart';
import '../widgets/item_portfolio.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) =>
            _portfolioContent(sizingInformation));
  }

  Widget _portfolioContent(SizingInformation sizingInformation) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: sizingInformation.isDesktop? 20.sw : 5.sw, vertical: 20),
      child: Column(
        children: [
          _titlePortfolio(),
          const SizedBox(height: 20.0),
          Consumer(
            builder: (_, ref, __) {
              final controller = ref.watch(homeProvider);
              return GridView.builder(

                itemCount: controller.imagesPortfolio.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: sizingInformation.isDesktop
                      ? 3
                      : sizingInformation.isTablet
                          ? 2
                          : 1,
                  mainAxisExtent: 480,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  var image = controller.imagesPortfolio[index];
                  var imageList = controller.listImagesPortfolio[index];

                  return FadeInUpBig(
                    duration: const Duration(milliseconds: 1600),
                    child: InkWell(
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            controller.hoveredIndex = index;
                          } else {
                            controller.hoveredIndex = null;
                          }
                          controller.notify();
                        },
                        child: ItemPortfolio(
                          index: index,
                          imagePortada: image,
                          imagesList: imageList,
                          hoveredIndex: controller.hoveredIndex,
                        )),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  FadeInDown _titlePortfolio() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Ultimos ',
          style: headingStyles(),
          children: [
            TextSpan(
              text: 'Proyectos',
              style: headingStyles(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
