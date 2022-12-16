import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Widgets/NavBack.dart';

class DeliverablesDetailsScreen extends StatefulWidget {
  const DeliverablesDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DeliverablesDetailsScreen> createState() => _DeliverablesDetailsScreenState();
}

class _DeliverablesDetailsScreenState extends State<DeliverablesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body:  Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 22),
              child: NavBack(),
            ),
           Expanded(child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: Text("Software Requirement Specification Document",style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.w400,color:Styles.secondryColor)),

                      ),
                      Gap(10),
                      Row(
                        children: [
                          Text("50 points",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),),
                        ],
                      ),
                      Gap(10),
                      Row(
                        children: [
                          Icon(CupertinoIcons.text_bubble,size: 20,),
                          Gap(5),
                          Text("3 Class Comments",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),)
                        ],
                      ),
                      Gap(10),
                      Container(
                        width: size.width,
                        height: 1,
                        color: Styles.secondryColor,
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Dear Students,",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.8)),),
                        ],
                      ),
                      Gap(5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The Template of the software requirement specification document is attached",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.8)),textAlign: TextAlign.start,),

                        ],
                      ),

                    ],
                  
              ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your work:",style: GoogleFonts.montserrat(fontSize:18,fontWeight: FontWeight.w400 ),),
                  Text("Assigned",style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.green.shade300),)
                ],
              ),
            ),

          ],

      ),
    );
  }
}
