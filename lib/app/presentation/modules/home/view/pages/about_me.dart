import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../data/helpers/typography.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType ==
            DeviceScreenType.desktop) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sw, vertical: 20),
            child: buildAboutMeContents(),
          );
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.sw, vertical: 20),
          child: buildAboutMeContents(),
        );
      },
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
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
        ),
        SizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer!',
            style: montserratStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,'
            ' as opposed to using \'Content here, content here\', making it look like readable English.'
            ' Many desktop publishing packages and web page editors now use Lorem Ipsum as their default'
            ' model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'
            ' Various versions have evolved over the years, sometimes by accident, sometimes on purpose'
            ' (injected humour and the like).',
            style: normalStyle(),
          ),
        ),
        // SizedBox(height: 15.0),
        // FadeInUp(
        //   duration: const Duration(milliseconds: 1800),
        //   child: ElevatedButton(onPressed: () {}, child: Text('Read More')),
        // )
      ],
    );
  }
}
