import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Widgets/LargeIcon.dart';
import 'package:fyp_assist/Widgets/MediumImage.dart';
import 'package:fyp_assist/Widgets/SmallIcon.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Styles/applayout.dart';
import 'MediumIcon.dart';
import 'SmallImage.dart';

class SingleTaskContainer extends StatelessWidget {
  bool completed;
   SingleTaskContainer({Key? key,required this.completed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              LargeIcon(icon: completed?CupertinoIcons.check_mark:CupertinoIcons.time, bgColor: Colors.white, iconColor: completed?Colors.green.shade300:Styles.secondryColor),
              Gap(5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("New Assignment",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w500),),
                  Gap(4),
                  SizedBox(
                    width: size.width*0.4,
                    child: Text("SSD & UI Submission",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                  Gap(4),
                  Text("Posted 26 Feb",style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w300),),

                ],
              )

            ],
          ),
          Text("27/10/2022",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400),),

        ],
      ),
    );
  }
}
