import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../../data/helpers/typography.dart';
import '../../controller/home_provider.dart';
import '../widgets/item_portfolio.dart';

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
          _titlePortfolio(),
          const SizedBox(height: 20.0),
          Consumer(
            builder: (_, ref, __) {
              final notifier = ref.watch(homeProvider);
              return GridView.builder(
                itemCount: notifier.imagesPortfolio.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (Device.screenType == ScreenType.tablet) ? 3 : 1,
                  mainAxisExtent: 480,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  var image = notifier.imagesPortfolio[index];
                  var imageList = notifier.listImagesPortfolio[index];

                  return FadeInUpBig(
                    duration: const Duration(milliseconds: 1600),
                    child: InkWell(
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            notifier.hoveredIndex = index;
                          } else {
                            notifier.hoveredIndex = null;
                          }
                        },
                        child: ItemPortfolio(
                          index: index,
                          imagePortada: image,
                          imagesList: imageList,
                          hoveredIndex: notifier.hoveredIndex,
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
