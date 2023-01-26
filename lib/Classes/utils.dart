import 'package:flutter/material.dart';

class utils{
  static final messengerKey =GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String? text)
  {
    if(text== null) return;
    final snackBar= SnackBar(content: Text(text),backgroundColor: Colors.grey);
    messengerKey.currentState!
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
  }
}