import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:fyp_assist/Widgets/SmallIcon.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';
import 'MediumIcon.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 22,right: 22,top: 16,bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30,),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1,
        )

    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Search",style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),),
          Icon(CupertinoIcons.search,size: 30,color: Colors.black,)
        ],
      ),
    );
  }
}
