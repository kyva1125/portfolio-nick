import 'package:meedu/notifiers.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.initialState);


  final List<List<String>> listImagesPortfolio = [
    imagesCine,
    imagesImc,
    imagesMienfermera,
    imagesOxigeno,
    imagesPecano,
    imagesPecanoWeb,
    imagesRestoner,
    imagesSeguridad,
    imagesComsatel,
    imagesEnotria,
    imagesAndytrack,
  ];

  List imagesPortfolio = <String>[
    "assets/images/cine/1.png",
    "assets/images/imc/1.png",
    "assets/images/mienfermera/1.png",
    "assets/images/oxigeno/1.png",
    "assets/images/pecano/1.png",
    "assets/images/pecano_web/1.png",
    "assets/images/restoner/1.png",
    "assets/images/seguridad/1.png",
    "assets/images/comsatel/1.jpg",
    "assets/images/enotria/1.jpg",
    "assets/images/andytrack/1.jpg",
  ];

  static final List<String> imagesCine = [
    'assets/images/cine/1.png',
    'assets/images/cine/2.png',
    'assets/images/cine/3.png',
  ];

  static final List<String> imagesComsatel = [
    'assets/images/comsatel/1.jpg',
    'assets/images/comsatel/2.jpg',
    'assets/images/comsatel/3.jpg',
    'assets/images/comsatel/4.jpg',
    'assets/images/comsatel/5.jpg',
  ];
  static final List<String> imagesEnotria = [
    'assets/images/enotria/1.jpg',
    'assets/images/enotria/2.jpg',
    'assets/images/enotria/3.jpg',
    'assets/images/enotria/4.jpg',
  ];
  static final List<String> imagesAndytrack = [
    'assets/images/andytrack/1.jpg',
    'assets/images/andytrack/2.jpg',
    'assets/images/andytrack/3.jpg',
    'assets/images/andytrack/4.jpg',
  ];

  static final List<String> imagesSeguridad = [
    'assets/images/seguridad/1.png',
    'assets/images/seguridad/2.png',
    'assets/images/seguridad/3.png',
    'assets/images/seguridad/4.png',
  ];
  static final List<String> imagesImc = [
    'assets/images/imc/1.png',
    'assets/images/imc/2.png',
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
  ];
  static final List<String> imagesPecanoWeb = [
    'assets/images/pecano_web/1.png',
    'assets/images/pecano_web/2.png',
  ];

  static final List<String> imagesRestoner = [
    'assets/images/restoner/1.png',
    'assets/images/restoner/2.png',
    'assets/images/restoner/3.png',
    'assets/images/restoner/1.png',
    'assets/images/restoner/2.png',
    'assets/images/restoner/6.png',
    'assets/images/restoner/7.png',
    'assets/images/restoner/8.png',
    'assets/images/restoner/9.png',
    'assets/images/restoner/10.png',
    'assets/images/restoner/11.png',
  ];
}
