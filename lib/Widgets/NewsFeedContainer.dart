import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Widgets/LargeIcon.dart';
import 'package:fyp_assist/Widgets/MediumImage.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Styles/applayout.dart';
import 'MediumIcon.dart';
import 'SmallIcon.dart';

class NewsFeedContainer extends StatefulWidget {
  const NewsFeedContainer({Key? key}) : super(key: key);

  @override
  State<NewsFeedContainer> createState() => _NewsFeedContainerState();
}

class _NewsFeedContainerState extends State<NewsFeedContainer> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,

      decoration: BoxDecoration(

      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 1,
              color: Styles.secondryColor.withOpacity(0.1),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MediumIcon(iconColor: Styles.secondryColor,icon: Icons.person_outline_outlined,bgColor: Colors.white,),
                    Gap(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr. Ashfaq",style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400),),
                        Gap(2),
                        Text("Posted a new FYP Template",style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w300),),
                      ],
                    ),
                  ],
                ),
                Text("01/01/2022",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),)

              ],
            )
          ],
        ),
      )
    );
  }
}
