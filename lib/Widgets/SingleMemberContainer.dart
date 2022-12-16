import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Widgets/MediumImage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleMemberContainer extends StatelessWidget {
  String title,status;
   SingleMemberContainer({Key? key,required this.title,required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Column(
        children: [
          MediumImage(img: 'assets/person.png'),
          Gap(10),
          Text(title,style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),),
          Gap(1),
          Text(status,style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),)
        ],
      ),
    );
  }
}
