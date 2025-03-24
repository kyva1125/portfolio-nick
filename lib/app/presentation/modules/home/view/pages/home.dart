import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_nick_flutter/app/data/helpers/colors.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/widgets/profile_animation.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../data/helpers/typography.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sw, vertical: 20),
        child: (Device.screenType == ScreenType.tablet)
            ? Row(
                spacing: 20,
                children: [
                  Expanded(child: _informationMain()),
                  ProfileAnimation(),
                ],
              )
            : Column(
                spacing: 20,
                children: [
                  ProfileAnimation(),
                  _informationMain(),
                ],
              ));
  }

  Column _informationMain() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hola, Yo Soy',
            style: montserratStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 20.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Nick Ledesma',
            style: headingStyles(),
          ),
        ),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                'Y Soy ',
                style: montserratStyle(color: Colors.white),
              ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle: montserratStyle(color: Colors.lightBlue),
                  ),
                  TyperAnimatedText('UX/UI',
                      textStyle: montserratStyle(color: Colors.lightBlue)),
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
        ),
        SizedBox(height: 20.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Soy Desarrollador de aplicaciones Móviles,  Web  y  Desktop.  Soy Proactivo desarrollando  rápido mis  actividades,  responsable, autodidacta y un apasionado de la enseñanza y tecnologías.',
            style: normalStyle(),
          ),
        ),
        SizedBox(height: 20.0),
        contactLinks(),
        SizedBox(height: 20.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Celular: +51 993475959",
                style: normalStyle(),
              ),
              Text("Correo: kyva1125@hotmail.com", style: normalStyle()),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://firebasestorage.googleapis.com/v0/b/portfolio-nick-99602.appspot.com/o/CV%20Nick%20Ledesma.pdf?alt=media&token=ab778dcd-c528-451e-b5a8-29d201b5e792');
                if (!await launchUrl(url)) {
                  print('Could not launch $url');
                }
              },
              child: Text(
                'Descargar CV',
                style: normalStyle(color: bgColor),
              )),
        ),
      ],
    );
  }

  Widget contactLinks() {
    return FadeInUp(
      duration: const Duration(milliseconds: 1600),
      child: Row(
        spacing: 10,
        children: [
          _itemContact(FontAwesomeIcons.linkedin, () async {
            final Uri url = Uri.parse(
                'https://www.linkedin.com/in/nick-bryan-ledesma-corilloclla-4873761a2/');
            if (!await launchUrl(url)) {
              print('Could not launch $url');
            }
          }),
          _itemContact(FontAwesomeIcons.whatsapp, () async {
            final Uri url = Uri.parse('https://wa.me/+51993475959');
            if (!await launchUrl(url)) {
              print('Could not launch $url');
            }
          }),
          _itemContact(FontAwesomeIcons.facebook, () {}),
        ],
      ),
    );
  }

  Widget _itemContact(IconData icon, Function() onPressed) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          onPressed: onPressed,
          icon: FaIcon(
            icon,
            color: bgColor2,
          ),
        ));
  }
}
