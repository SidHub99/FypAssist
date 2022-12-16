import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';

class NavBack extends StatelessWidget {
  const NavBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        width: size.width,
        padding: EdgeInsets.only(top: 28),
        child: Row(
          children: [
            Icon(CupertinoIcons.back,
              color: Colors.black,size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
