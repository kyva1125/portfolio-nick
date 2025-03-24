import 'package:flutter/material.dart';
import 'package:flutter_meedu/screen_utils.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/about_me.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/experiencia.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/footer.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/home.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/my_services.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/my_skins.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/pages/portfolio.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';

import '../../../../data/helpers/colors.dart';
import '../../../../data/helpers/typography.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ItemScrollController _itemScrollController = ItemScrollController();

  var menuIndex = -1;

  final menuItems = <String>[
    'Inicio',
    'Sobre mi',
    'Mis habilidades',
    'Mi experiencia',
    'Servicios',
    'Portafolio',
  ];

  Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screensList = <Widget>[
      Home(),
      AboutMe(),
      MySkins(),
      Experiencia(),
      MyServices(),
      Portfolio(),
      Footer(),
    ];

    return Scaffold(
        backgroundColor: bgColor,
        // floatingActionButton: FloatingActionButton(
        //     backgroundColor: Colors.white,
        //     onPressed: () => scrollTo(index: 0),
        //     child: Icon(
        //       Icons.arrow_upward,
        //       size: 25,
        //       color: bgColor2,
        //     )),
        appBar: AppBar(
            backgroundColor: bgColor,
            toolbarHeight: 90,
            titleSpacing: 100,
            title: (Device.screenType == ScreenType.tablet)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Text(
                          'NICK LEDESMA',
                          style: headerTextStyle(),
                        ),
                        SizedBox(
                          height: 40,
                          child: ListView.separated(
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, child) => SizedBox(
                              width: 10,
                            ),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  scrollTo(index: index);
                                },
                                borderRadius: BorderRadius.circular(100),
                                onHover: (value) {
                                  setState(() {
                                    if (value) {
                                      menuIndex = index;
                                    } else {
                                      menuIndex = -1;
                                    }
                                  });
                                },
                                child: buildNavBarAnimatedContainer(
                                    index, menuIndex == index ? true : false),
                              );
                            },
                          ),
                        ),
                      ])
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NICK LEDESMA',
                        style: headerTextStyle(),
                      ),
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
                        itemBuilder: (BuildContext context) => menuItems
                            .asMap()
                            .entries
                            .map(
                              (e) => PopupMenuItem(
                                onTap: () {
                                  scrollTo(index: e.key);
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
                  )),
        body: ScrollablePositionedList.builder(
          itemCount: screensList.length,
          itemScrollController: _itemScrollController,
          itemBuilder: (context, index) {
            return screensList[index];
          },
        ));
  }

  Widget buildNavBarAnimatedContainer(int index, bool hover) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          menuItems[index],
          style: headerTextStyle(color: Colors.white),
        ),
        AnimatedContainer(
          color: Colors.white,
          height: 5,
          width: hover ? 25 : 0,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
        ),
      ],
    );
  }
}
