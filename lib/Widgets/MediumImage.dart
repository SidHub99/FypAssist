import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumImage extends StatelessWidget {
  String img;
  MediumImage({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage(img),
    );
  }
}
