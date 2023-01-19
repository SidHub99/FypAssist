import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showSnackBar(BuildContext context,String txt){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(txt,)));
}