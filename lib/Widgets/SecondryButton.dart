import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Styles/Styles.dart';

class SecondryButton extends StatefulWidget {
  String title;
  double width;
  double height;
   SecondryButton({Key? key,required this.title,required this.width,required this.height}) : super(key: key);

  @override
  State<SecondryButton> createState() => _SecondryButtonState();
}

class _SecondryButtonState extends State<SecondryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Styles.secondryColor,
      ),
      child: Center(
        child: Text(widget.title,style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
      ),

    );
  }
}
