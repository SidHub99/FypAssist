import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import 'ExtraSmallImage.dart';
import 'SmallImage.dart';

class SingleCommentContainer extends StatelessWidget {
  String title,comment;
  bool me;
   SingleCommentContainer({Key? key,required this.title,required this.comment,required this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return me?Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(top: 16,bottom: 16,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black),),
                  Gap(5),
                  Text(comment,style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
                ],
              ),
            ),
            Gap(10),
            ExtraSmallImage(img: 'assets/person.png',),


          ],
        ),
        SizedBox(
          width: size.width*0.118,
          child: Text("5:30pm",style: GoogleFonts.montserrat(fontSize: 8,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
        )

      ],
    ):Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ExtraSmallImage(img: 'assets/supervisor.png',),
            Gap(10),
            Container(
              decoration: BoxDecoration(
                color: Styles.surfaceColor,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(top: 16,bottom: 16,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black),),
                  Gap(5),
                  Text(comment,style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width*0.118,
          child: Text("5:30pm",style: GoogleFonts.montserrat(fontSize: 8,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
        )

      ],
    );
  }
}
