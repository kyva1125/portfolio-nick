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
            'Flutter Developer!',
            style: montserratStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Hola, nuevamente :), Here go again, Soy Nick Ledesma naci en Ayacucho - Perú en el año de 1996, soy fan de la tecnologia aunque nos ha facilitado mucho la vida siempre es bueno salir a la calle deves en cuando no solo cuando no hay fluido electrico o internet xD, Empeze programando en Python cuando ingrese a la universidad, luego descubri Java y todo lo fantastico que puedes hacer con este lenguaje usando Netbeans y los frames en ese tiempo, poco a poco descubri que con Java se podian hacer app de android y me gusto todo referente a los componentes y me emocione con el hola mundo instalado en un celular, despues descubri a Kotlin junto con Flutter, era una eleccion de pruebas, al final me decidi con Flutter que me encanto su facilidad y dinamismo y las geniales cosas que podrias hacer en par de minutos, y asi pues estoy aca esperando a que me digas queremos hacer esto...',
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
