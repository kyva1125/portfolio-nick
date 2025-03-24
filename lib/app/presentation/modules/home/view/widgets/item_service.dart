import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../data/helpers/colors.dart';
import '../../../../../data/helpers/typography.dart';

class ItemService extends StatelessWidget {
  ItemService({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
  });

  final String title;
  final String content;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: bgColor2,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: bgColor2, width: 3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20.sp,
            color: Colors.white,
          ),
          Text(
            title,
            style: montserratStyle(color: Colors.white),
          ),
          Text(
            content,
            style: normalStyle(size: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
