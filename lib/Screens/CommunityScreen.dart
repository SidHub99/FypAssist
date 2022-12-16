import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Screens/CommunityDetailScreen.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:fyp_assist/Widgets/TitleNavigation.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Widgets/CommunityContainer.dart';
import '../Widgets/ExtraSmallImage.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: (){
          showModalBottomSheet(context: context, builder: (builder){
            return BottomSheet(onClosing: (){

            }, builder: (builder){
              return Container(
                width: size.width,
                padding: EdgeInsets.all(22),
                color: Colors.white,
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
                            Text("Muhammad Saad",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text("Now",style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.8)),),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Enter your text",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),),
                        Icon(Icons.send,size: 30,color: Colors.black,)
                      ],
                    ),


                  ],
                ),
              );
            });
          });

        },
        child: Icon(CupertinoIcons.add,color: Colors.white,),
        backgroundColor: Styles.secondryColor,
      ),
      backgroundColor: Colors.white.withOpacity(0.98),
      body: Column(
        children: [
          TitleNavigation(title: "Community"),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(22),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>CommunityDetailScreen(interested: true,title: 'Umar Siddiqui',text: 'i want 2 group members for project FYP assist')));
                      },
                        child: CommunityContainer(interested: true,title: 'Umar Siddiqui',text: 'i want 2 group members for project FYP assist')),
                    Gap(10),
                    CommunityContainer(interested: false,title: 'Luqman Haqeem',text: 'is anyone interested in AI image processing projects?'),
                    Gap(10),
                    CommunityContainer(interested: true,title: 'Taimoor Hassan',text: 'Recommend some no-sql offline databases'),
                    Gap(10),
                    CommunityContainer(interested: true,title: 'Umar Siddiqui',text: 'i want 2 group members for project FYP assist'),
                    Gap(10),
                    CommunityContainer(interested: false,title: 'Luqman Haqeem',text: 'is anyone interested in AI image processing projects?'),
                    Gap(10),
                    CommunityContainer(interested: true,title: 'Taimoor Hassan',text: 'Recommend some no-sql offline databases'),

                  ],

                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
