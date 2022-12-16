import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:fyp_assist/Widgets/MediumIcon.dart';
import 'package:fyp_assist/Widgets/MediumImage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import 'SmallImage.dart';

class SupervisorContainer extends StatelessWidget {
  String imgAsset;
  String title;
  String email;
  String expertise;
   SupervisorContainer({Key? key,required this.title,required this.email,required this.expertise,required this.imgAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SmallImage(img: imgAsset),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),),
                  Gap(5),
                  Text(email,style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),),
                  Gap(5),
                  Text(expertise,style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),),
                ],
              )
            ],
          ),
          Row(
            children: [
              MediumIcon(icon:CupertinoIcons.envelope, bgColor: Styles.surfaceColor, iconColor: Colors.black),
              Gap(10),
              MediumIcon(icon:CupertinoIcons.chat_bubble_text, bgColor: Styles.surfaceColor, iconColor: Colors.black),
            ],
          )
        ],
        
      ),
    );
  }
}
