import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/about_me.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/footer.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/home.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/my_services.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/portfolio.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../data/helpers/colors.dart';
import '../../../../data/helpers/typography.dart';
import '../controller/home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
            backgroundColor: bgColor,
            toolbarHeight: 90,
            titleSpacing: 100,
            title: ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.isDesktop) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'NICK LEDESMA',
                        style: headerTextStyle(),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 30,
                        child: ListView.separated(
                          itemCount: homeProvider.read.menuItems.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, child) =>
                              const SizedBox(width: 8),
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  // scrollTo(index: index);
                                },
                                borderRadius: BorderRadius.circular(100),
                                onHover: (value) {
                                  if (value) {
                                    homeProvider.read.menuIndex = index;
                                  } else {
                                    homeProvider.read.menuIndex = 0;
                                  }
                                  homeProvider.read.notify();
                                },
                                child: Consumer(builder: (_, ref, __) {
                                  final controller = ref.watch(homeProvider);
                                  return _buildNavBarAnimatedContainer(
                                      index,
                                      controller.menuIndex == index
                                          ? true
                                          : false);
                                }));
                          },
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  );
                } else {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'NICK LEDESMA',
                        style: headerTextStyle(),
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        icon: const Icon(
                          Icons.menu_sharp,
                          size: 32,
                          color: Colors.white,
                        ),
                        color: bgColor2,
                        position: PopupMenuPosition.under,
                        constraints:
                            BoxConstraints.tightFor(width: context.width * 0.9),
                        itemBuilder: (BuildContext context) =>
                            homeProvider.read.menuItems
                                .asMap()
                                .entries
                                .map(
                                  (e) => PopupMenuItem(
                                    onTap: () {
                                      //scrollTo(index: e.key);
                                    },
                                    child: Text(
                                      e.value,
                                      style: headerTextStyle(),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ],
                  );
                }
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Home(),
              AboutMe(),
              MyServices(),
              Portfolio(),
              Footer(),
            ],
          ),
        ));
  }

  AnimatedContainer _buildNavBarAnimatedContainer(int index, bool hover) {
    final onMenuHover = Matrix4.identity()..scale(1.0);
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        homeProvider.read.menuItems[index],
        style: headerTextStyle(color: hover ? Colors.black : Colors.white),
      ),
    );
  }
}
