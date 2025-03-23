import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../data/helpers/typography.dart';
import '../widgets/item_service.dart';
import '../widgets/title_area.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  List<Widget> _infoServices() {
    return [
      ItemService(
        title: 'Flutter developer',
        content:
        "Flutter es una herramienta de código abierto desarrollada por Google que nos permite crear aplicaciones rápidas y hermosas tanto para Android como para iOS. Mi objetivo principal es brindar soluciones eficientes y de calidad a través del desarrollo de aplicaciones móviles con un rendimiento y su amplia gama de widgets personalizables. Además, también me encargo de integrar funcionalidades como servicios en la nube, bases de datos y APIs externas en las aplicaciones que construyo. Esto me permite crear aplicaciones más completas y con características avanzadas. Si estás buscando un desarrollador de servicios en Flutter, puedo ayudarte a crear la aplicación móvil que necesitas. No dudes en contactarme para discutir tus ideas y requerimientos. Estoy aquí para convertir tus ideas en realidad.",
        icon: Icons.mobile_friendly,
      ),
      ItemService(
        title: 'UX/UI',
        content:
        "Diseñar y desarrollar interfaces de usuario efectivas y atractivas para aplicaciones web o móviles que implica entender las necesidades del usuario final y crear soluciones que sean fáciles de usar y que cumplan con sus expectativas. Teniendo habilidades en diseño gráfico, experiencia de usuario, programación y comunicación. Esta posición es crucial para cualquier empresa que quiera ofrecer una experiencia de usuario excepcional y diferenciarse en un mercado cada vez más competitivo.",
        icon: Icons.adb,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 20),
      child: _myServiceContent(),
    );
  }



  Widget _myServiceContent() {
    return Column(
      children: [
        TitleArea(primero: 'Mis', segundo: 'Servicios',),
        const SizedBox(height: 20.0),
        Column(
          spacing: 20,
          children: _infoServices(),
        )
      ],
    );
  }


}
