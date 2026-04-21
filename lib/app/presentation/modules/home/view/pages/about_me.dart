import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../data/helpers/typography.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 10),
      child: buildAboutMeContents(),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _titleAboutMe(),
        SizedBox(height: 10.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter, React, Node Developer',
            style: montserratStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Hola! Soy Nick Ledesma, desarrollador nacido en Ayacucho, Perú (1996). Mi trayectoria comenzó con Python en la universidad, seguido por Java donde descubrí mi pasión por el desarrollo móvil. Tras explorar Kotlin y Flutter, me decanté por este último por su dinamismo y eficiencia. Disfruto creando soluciones tecnológicas innovadoras que combinen funcionalidad y diseño atractivo. Mi experiencia abarca desde aplicaciones móviles hasta desarrollo web con React y Node.js. Estoy listo para transformar tus ideas en realidad digital. ¿Qué proyecto tienes en mente?',
            style: normalStyle(),
          ),
        ),
      ],
    );
  }

  FadeInRight _titleAboutMe() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Acerca de ',
          style: headingStyles(),
          children: [
            TextSpan(
              text: 'Mi!',
              style: headingStyles(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
