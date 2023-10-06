import 'package:flutter/material.dart';

import '../../../../../data/helpers/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: bgColor,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgColor2),
          child: const Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
