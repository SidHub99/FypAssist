import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';

class ExpandButton extends StatelessWidget {
  String title;
   ExpandButton({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),),
        Text("See All",style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400,color: Styles.primaryColor),)
      ],

    );
  }
}
