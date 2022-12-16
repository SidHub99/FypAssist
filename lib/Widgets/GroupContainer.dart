import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import '../Styles/applayout.dart';
import 'SingleMemberContainer.dart';

class GroupContainer extends StatelessWidget {
  const GroupContainer({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    List<String> names=['Muhammad Saad','Zubaida Jabbar','Umar Siddiqui','Maviya Akram'];
    List<String> status=['Accepted','Accepted','Accepted','Pending Approval'];
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      height: size.height*0.5,
      decoration: BoxDecoration(
        color: Styles.surfaceColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height*0.1,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Styles.secondryColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("FYP Assist",style: GoogleFonts.montserrat(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),),
                Text("*Not Approved",style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
        Expanded(child: Padding(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0
            ),
            itemBuilder: (BuildContext context, int index){
              return SingleMemberContainer(title: names.elementAt(index),status: status.elementAt(index),);
            },
          ),
        ),)

    ],
      ),

    );
  }
}
