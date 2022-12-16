import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallImage extends StatelessWidget {
  String img;
  SmallImage({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundImage: AssetImage(img),
    );
  }
}
