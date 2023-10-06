import 'package:flutter/cupertino.dart';
import 'package:flutter_meedu/meedu.dart';

class HomeController extends SimpleNotifier {
  bool serviceFlutter = false, serviceFigma = false;

  var hoveredIndex;

  final List<List<String>> listImagesPortfolio = [
    imagesCine,
    imagesImc,
    imagesMienfermera,
    imagesOxigeno,
    imagesPecano,
    imagesRestoner,
    imagesSeguridad
  ];

  List imagesPortfolio = <String>[
    "assets/images/cine/1.png",
    "assets/images/imc/1.png",
    "assets/images/mienfermera/1.png",
    "assets/images/oxigeno/1.png",
    "assets/images/pecano/1.png",
    "assets/images/restoner/1.png",
    "assets/images/seguridad/1.png",
  ];

  static final List<String> imagesCine = [
    'assets/images/cine/1.png',
    'assets/images/cine/2.png',
    'assets/images/cine/3.png',
  ];
  static final List<String> imagesSeguridad = [
    'assets/images/seguridad/1.png',
    'assets/images/seguridad/2.png',
    'assets/images/seguridad/3.png',
  ];
  static final List<String> imagesImc = [
    'assets/images/imc/1.png',
  ];
  static final List<String> imagesMienfermera = [
    'assets/images/mienfermera/1.png',
    'assets/images/mienfermera/2.png',
    'assets/images/mienfermera/3.png',
    'assets/images/mienfermera/4.png',
    'assets/images/mienfermera/5.png',
  ];
  static final List<String> imagesOxigeno = [
    'assets/images/oxigeno/1.png',
    'assets/images/oxigeno/2.png',
    'assets/images/oxigeno/3.png',
  ];

  static final List<String> imagesPecano = [
    'assets/images/pecano/1.png',
    'assets/images/pecano/2.png',
    'assets/images/pecano/3.png',
    'assets/images/pecano/4.png',
    'assets/images/pecano/5.png',
  ];

  static final List<String> imagesRestoner = [
    'assets/images/restoner/1.png',
    'assets/images/restoner/2.png',
    'assets/images/restoner/3.png',
    'assets/images/restoner/4.png',
    'assets/images/restoner/5.png',
    'assets/images/restoner/6.png',
    'assets/images/restoner/7.png',
    'assets/images/restoner/8.png',
    'assets/images/restoner/9.png',
    'assets/images/restoner/10.png',
    'assets/images/restoner/11.png',
  ];



  final menuItems = <String>[
    'Inicio',
    'Sobre mi',
    'Servicios',
    'Portafolio',
  ];

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
