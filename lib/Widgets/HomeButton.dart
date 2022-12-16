import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';

class HomeButton extends StatelessWidget {
  String title;
  IconData iconData;
  HomeButton({Key? key, required this.title, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Styles.secondryColor,
          ),
          child: Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
        ),
        Gap(10),
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 13, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
