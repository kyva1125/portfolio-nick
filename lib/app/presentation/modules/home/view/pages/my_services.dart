import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../data/helpers/typography.dart';
import '../../controller/home_provider.dart';
import '../widgets/item_service.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => _myServiceContent());
  }

  Widget _myServiceContent() {
    return Column(
      children: [
        _titleMyService(),
        const SizedBox(height: 20.0),
        Consumer(builder: (_, ref, __) {
          final controller = ref.watch(homeProvider);
          return Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    homeProvider.read.serviceFlutter = value;
                    homeProvider.read.notify();
                  },
                  child: ItemService(
                    title: 'Flutter developer',
                    content: "Flutter es una herramienta de código abierto desarrollada por Google que nos permite crear aplicaciones rápidas y hermosas tanto para Android como para iOS. Mi objetivo principal es brindar soluciones eficientes y de calidad a través del desarrollo de aplicaciones móviles con un rendimiento y su amplia gama de widgets personalizables. Además, también me encargo de integrar funcionalidades como servicios en la nube, bases de datos y APIs externas en las aplicaciones que construyo. Esto me permite crear aplicaciones más completas y con características avanzadas. Si estás buscando un desarrollador de servicios en Flutter, puedo ayudarte a crear la aplicación móvil que necesitas. No dudes en contactarme para discutir tus ideas y requerimientos. Estoy aquí para convertir tus ideas en realidad.",
                    icon: FontAwesomeIcons.computer,
                    hover: controller.serviceFlutter,
                  )),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    homeProvider.read.serviceFigma = value;
                    homeProvider.read.notify();
                  },
                  child: ItemService(
                    title: 'UX/UI',
                    content: "Diseñar y desarrollar interfaces de usuario efectivas y atractivas para aplicaciones web o móviles que implica entender las necesidades del usuario final y crear soluciones que sean fáciles de usar y que cumplan con sus expectativas. Teniendo habilidades en diseño gráfico, experiencia de usuario, programación y comunicación. Esta posición es crucial para cualquier empresa que quiera ofrecer una experiencia de usuario excepcional y diferenciarse en un mercado cada vez más competitivo.",
                    icon: FontAwesomeIcons.uikit,
                    hover: controller.serviceFigma,
                  )),

            ],
          );
        }),
      ],
    );
  }

  FadeInDown _titleMyService() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Mis ',
          style: headingStyles(),
          children: [
            TextSpan(
              text: 'Servicios',
              style: headingStyles(),
            )
          ],
        ),
      ),
    );
  }
}
