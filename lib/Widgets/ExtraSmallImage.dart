import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraSmallImage extends StatelessWidget {
  String img;
  ExtraSmallImage({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundImage: AssetImage(img),
    );
  }
}
