import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:fyp_assist/Widgets/SmallIcon.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';

class TitleNavigation extends StatelessWidget {
  String title;
   TitleNavigation({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Styles.secondryColor,
      ),
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SmallIcon(icon: Icons.arrow_back_ios_new_rounded, bgColor: Colors.white, iconColor: Colors.black),
              Gap(20),
              Text(title,style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
