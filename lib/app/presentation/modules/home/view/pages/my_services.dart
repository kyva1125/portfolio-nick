import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../../../data/helpers/typography.dart';
import '../../controller/home_provider.dart';
import '../widgets/item_service.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'Mis ',
                style: headingStyles(),
                children: [
                  TextSpan(
                    text: 'Servicios',
                    style: headingStyles(

                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              homeProvider.read.isApp = value;
              homeProvider.read.notify();
            },
            child: Consumer(
              builder: (_, ref, __) {
                final controller = ref.watch(homeProvider);
                return ItemService(
                  title: 'App Development',
                  asset: 'assets/images/nick_without.png',
                  hover: controller.isApp,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
