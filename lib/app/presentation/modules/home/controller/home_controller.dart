import 'package:flutter/cupertino.dart';
import 'package:flutter_meedu/meedu.dart';

class HomeController extends SimpleNotifier {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;
  var hoveredIndex;

  List images = <String>[
    "assets/images/nick_without.png",
    "assets/images/nick_without.png",
    "assets/images/nick_without.png",
    "assets/images/nick_without.png",
    "assets/images/nick_without.png",
    "assets/images/nick_without.png",
  ];

  final menuItems = <String>[
    'Inicio',
    'Sobre mi',
    'Servicios',
    'Portafolio',
  ];

  final onMenuHover = Matrix4.identity()..scale(1.0);

  var menuIndex = 0;

  // final screensList = const <Widget>[
  //   HomePage(),
  //   AboutMe(),
  //   MyServices(),
  //   MyPortfolio(),
  //   ContactUs(),
  //   FooterClass(),
  // ];

}
  