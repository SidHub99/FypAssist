import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Styles/Styles.dart';

class SecondryRoundButton extends StatelessWidget {
  IconData iconData;
   SecondryRoundButton({Key? key,required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Styles.secondryColor,
        shape: BoxShape.circle,
      ),
      child: Icon(iconData,size: 35,color: Colors.white,),
    );
  }
}
