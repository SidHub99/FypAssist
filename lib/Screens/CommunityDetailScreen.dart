import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Widgets/ExtraSmallImage.dart';
import '../Widgets/MediumImage.dart';
import '../Widgets/NavBack.dart';
import '../Widgets/SingleComment.dart';
import '../Widgets/SmallImage.dart';

class CommunityDetailScreen extends StatefulWidget {
  bool interested;
  String title;
  String text;
   CommunityDetailScreen({Key? key,required this.interested,required this.title,required this.text}) : super(key: key);

  @override
  State<CommunityDetailScreen> createState() => _CommunityDetailScreenState();
}

class _CommunityDetailScreenState extends State<CommunityDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body:  Column(
          children: [
              Padding(child: NavBack(),   padding: EdgeInsets.only(left: 22,right: 22,top: 22),),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 22),
              child: Row(
                children: [
                  SmallImage(img: 'assets/person.png'),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.title,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500),),
                      Text("26 Oct, 2022",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.8)),),

                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 22),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: Text(widget.text,style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
            ),
            Gap(11),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 11),
              child: Container(
                    width: size.width,
                    height: 1,
                    color: Styles.secondryColor.withOpacity(0.1)
                ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 11),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                      }, icon: Icon(widget.interested?CupertinoIcons.hand_thumbsup_fill:CupertinoIcons.hand_thumbsup,size: 18,color: widget.interested?Styles.secondryColor:Colors.black,)),
                      Gap(3),
                      Text("Interested",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300,color: widget.interested?Styles.secondryColor:Colors.black,),)
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                      }, icon: Icon(CupertinoIcons.text_bubble_fill,size: 18,color:Styles.secondryColor)),
                      Gap(3),
                      Text("6 Comments",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300,color: Styles.secondryColor),)
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 22,right: 22,top: 22),
                child: Column(
                  children: [
                    SingleCommentContainer(title:"Hammad Razzaq",comment:"hi my name is Hammad",me: false,),
                    SingleCommentContainer(title:"Maviya Akram",comment:"Hi, my name is Maviya",me: false,),
                    SingleCommentContainer(title:"Me",comment:"Hi, thank you ",me: true,),
                    SingleCommentContainer(title:"Taimoor Hassan",comment:"is group full?",me: false,),
                    SingleCommentContainer(title:"Me",comment:"not yet",me: true,),
                  ],
                ),
              )
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ExtraSmallImage(img: 'assets/person.png',),
                      Gap(10),
                      Text("Enter your comment",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300),)
                    ],
                  ),
                  Icon(Icons.send,color: Styles.secondryColor,)
                ],
              )
            )













          ],
        ),

    );
  }
}
