import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:portfolio_nick_flutter/app/data/helpers/colors.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/view/widgets/profile_animation.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../data/helpers/typography.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType ==
            DeviceScreenType.desktop) {
          return _builderDesktopHome();
        }

        return _builderMobileAndTabletHome();
      },
    );
  }

  Widget _builderMobileAndTabletHome() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sw, vertical: 20),
      child: Column(
        children: [
          _informationMain(),
          SizedBox(
            height: 20,
          ),
          ProfileAnimation()
        ],
      ),
    );
  }

  Widget _builderDesktopHome() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sw, vertical: 20),
      child: Row(
        children: [
          Expanded(child: _informationMain()),
          SizedBox(
            width: 20,
          ),
          ProfileAnimation()
        ],
      ),
    );
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
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: ElevatedButton(onPressed: () {}, child: Text('Descargar CV', style: normalStyle(color: bgColor),)),
        ),
      ],
    );
  }
}
