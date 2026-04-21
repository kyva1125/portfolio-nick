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
      ItemService(
        title: 'React Developer',
        content:
        "Desarrollo de aplicaciones web modernas y dinámicas utilizando React, una de las bibliotecas JavaScript más populares. Creo interfaces de usuario interactivas y componentes reutilizables que mejoran la experiencia del usuario y optimizan el rendimiento de la aplicación. Implemento arquitecturas robustas siguiendo las mejores prácticas y patrones de diseño como Redux para la gestión del estado. Además, tengo experiencia integrando APIs RESTful y GraphQL para crear aplicaciones web completas y funcionales. Si buscas un desarrollador React para tu próximo proyecto, puedo ayudarte a construir una aplicación web moderna, rápida y escalable.",
        icon: Icons.code,
      ),
      ItemService(
        title: 'Node.js Developer',
        content:
        "Desarrollo de servicios backend y APIs robustas utilizando Node.js, un entorno de ejecución de JavaScript del lado del servidor. Construyo arquitecturas escalables y de alto rendimiento que pueden manejar grandes volúmenes de tráfico y datos. Implemento patrones de diseño como MVC, servicios RESTful y microservicios según las necesidades específicas del proyecto. Tengo experiencia en la integración con diferentes bases de datos y servicios externos, así como en la implementación de autenticación y autorización seguras. Si necesitas un desarrollador Node.js para tu proyecto, puedo ayudarte a crear un backend sólido y eficiente que soporte tus aplicaciones.",
        icon: Icons.dns,
      ),
      ItemService(
        title: 'PostgreSQL Expert',
        content:
        "Diseño e implementación de bases de datos relacionales utilizando PostgreSQL, uno de los sistemas de gestión de bases de datos más avanzados y robustos. Creo esquemas de bases de datos optimizados, consultas eficientes y procedimientos almacenados para garantizar un rendimiento óptimo. Implemento estrategias de indexación, particionamiento y optimización para manejar grandes volúmenes de datos. Además, tengo experiencia en la configuración de replicación, copias de seguridad y recuperación para garantizar la disponibilidad y seguridad de los datos. Si necesitas un experto en PostgreSQL para tu proyecto, puedo ayudarte a diseñar e implementar una solución de base de datos sólida y escalable.",
        icon: Icons.storage,
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