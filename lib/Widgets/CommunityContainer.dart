import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Styles/applayout.dart';
import 'ExtraSmallImage.dart';

class CommunityContainer extends StatelessWidget {
  bool interested;
  String title;
  String text;
   CommunityContainer({Key? key,required this.interested,required this.title,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      padding: EdgeInsets.only(top: 22,left: 22,right: 22,bottom: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Styles.surfaceColor,
            spreadRadius: 1,
            blurRadius: 10,

          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              ExtraSmallImage(img: 'assets/person.png'),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w500),),
                  Text("26 Oct, 2022",style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.8)),),

                ],
              ),
            ],
          ),
          Gap(10),
          Column(
              children: [
                SizedBox(
                  width: size.width,
                  child: Text(text,style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400),),
                ),
              ],
          ),
          Gap(10),
          Container(
            width: size.width,
            height: 1,
            color: Styles.secondryColor.withOpacity(0.1)
          ),
          Gap(10),
          Row(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                  }, icon: Icon(interested?CupertinoIcons.hand_thumbsup_fill:CupertinoIcons.hand_thumbsup,size: 18,color: interested?Styles.secondryColor:Colors.black,)),
                  Gap(3),
                  Text("Interested",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300,color: interested?Styles.secondryColor:Colors.black,),)
                ],
              ),
              Gap(10),
              Row(
                children: [
                  IconButton(onPressed: (){
                  }, icon: Icon(CupertinoIcons.text_bubble,size: 18,)),
                  Gap(3),
                  Text("6 Comments",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),)
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
