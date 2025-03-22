import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:meedu/notifiers.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_state.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.initialState);

  var hoveredIndex;
  var menuIndex = 0;






  @override
  FutureOr<void> dispose() {
    return super.dispose();
  }

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


}
