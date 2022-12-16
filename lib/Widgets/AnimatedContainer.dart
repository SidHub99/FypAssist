import 'package:flutter/cupertino.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:lottie/lottie.dart';

import '../Styles/Styles.dart';

class AnimatedContainerBox extends StatefulWidget {
  double width;
  double height;
  String assetName;
   AnimatedContainerBox({Key? key,required this.width,required this.height,required this.assetName}) : super(key: key);

  @override
  State<AnimatedContainerBox> createState() => _AnimatedContainerBoxState();
}

class _AnimatedContainerBoxState extends State<AnimatedContainerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Styles.surfaceColor,
        shape: BoxShape.circle
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Lottie.asset(widget.assetName,repeat: false),
      ),
    );
  }
}
