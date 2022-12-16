import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Screens/SupervisorsScreen.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:fyp_assist/Widgets/MediumIcon.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Widgets/ExpandButton.dart';
import '../Widgets/HomeButton.dart';
import '../Widgets/MediumImage.dart';
import '../Widgets/NewsFeedContainer.dart';
import 'CommunityScreen.dart';
import 'CoordinatorsScreen.dart';
import 'DeliverablesScreen.dart';
import 'GroupScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
              child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22,right: 22,top: 50,bottom: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          MediumImage(img: "assets/person.png",),
                          Gap(10),
                          Column(
                            children: [
                              Text("Muhammad Saad",style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),),
                              Text("191179@students.au.edu",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),)
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.notifications_active_outlined,color: Styles.secondryColor,size: 25 ,)
                    ],
                  ),
                ),
                Gap(10),
                Padding(
                  padding: EdgeInsets.only(left: 22,right: 22),
                  child: Row(
                    children: [
                      SizedBox(width: size.width*0.13,),
                      Text("20%",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),)
                    ],
                  ),
                ),
                Gap(5),
                Container(
                    width: size.width,
                    margin: EdgeInsets.only(left: 22,right: 22),
                    height: size.height*0.02,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Styles.surfaceColor,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: size.width*0.15,
                        height: size.height*0.015,
                        decoration: BoxDecoration(
                          color: Styles.secondryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      Container(
                        width: size.width*0.15,
                      ),
                      Container(
                        width: 10,
                        decoration: BoxDecoration(
                          color: Styles.secondryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: size.width*0.15,
                      ),
                      Container(
                        width: 10,
                        decoration: BoxDecoration(
                          color: Styles.secondryColor,
                          shape: BoxShape.circle,
                        ),
                      ), 
                      Container(
                        width: size.width*0.15,
                      ),
                      Container(
                        width: 10,
                        decoration: BoxDecoration(
                          color: Styles.secondryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  ),
                Gap(20),
                Padding(
                  padding: EdgeInsets.all(22),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>SupervisorsScreen()));
                          },
                            child: HomeButton(iconData: Icons.supervisor_account_outlined,title: 'Supervisors',)),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>CoordinatorsScreen()));
                            },
                            child: Padding(padding: EdgeInsets.only(left: 25),child: HomeButton(iconData: Icons.computer,title: 'Coordinators',),)),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>GroupScreen()));
                          },
                            child: Padding(padding: EdgeInsets.only(left: 25),child: HomeButton(iconData: Icons.groups_outlined,title: 'Group',),)),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>CommunityScreen()));
                            },
                            child: Padding(padding: EdgeInsets.only(left: 25),child: HomeButton(iconData: CupertinoIcons.group,title: 'Community',),)),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder)=>DeliverableScreen()));
                          },
                            child: Padding(padding: EdgeInsets.only(left: 25),child: HomeButton(iconData: Icons.task,title: 'Deliverables',),)),


                        Padding(padding: EdgeInsets.only(left: 25),child: HomeButton(iconData: Icons.contact_support_outlined,title: 'Help/Support',),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22),
                  child: Container(
                    width: size.width,
                    height: size.height*0.4,

                    decoration: BoxDecoration(
                      color: Styles.surfaceColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(16),
                        child:  ExpandButton(title: 'News Feed',),),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                NewsFeedContainer(),
                                NewsFeedContainer(),
                                NewsFeedContainer(),
                                NewsFeedContainer(),
                                NewsFeedContainer(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(22),
                  child: Container(
                    width: size.width,
                    height: size.height*0.1,
                    decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Styles.shadeColorPrimary,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset.infinite,
                          blurStyle: BlurStyle.outer
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              MediumIcon(icon: Icons.task_alt_outlined, bgColor: Colors.white, iconColor: Colors.black),
                              Gap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Upcoming Task",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
                                  Text("FYP Proposal Submission",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Due",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                              Text("09/09/2022",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                )




                

              ],
            ),
          ))
        ],

      ),
    );
  }
}
