import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../../../data/helpers/typography.dart';
import '../../controller/home_provider.dart';
import '../widgets/item_portfolio.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Latest ',
                style: headingStyles(),
                children: [
                  TextSpan(
                    text: 'Projects',
                    style: headingStyles(
                        color: Colors.red),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Consumer(
            builder: (_, ref, __) {
              final controller = ref.watch(homeProvider);
              return GridView.builder(
                itemCount: controller.images.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 280,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                ),
                itemBuilder: (context, index) {
                  var image = controller.images[index];
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
                          image: image, hoveredIndex: controller.hoveredIndex,
                        )
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
