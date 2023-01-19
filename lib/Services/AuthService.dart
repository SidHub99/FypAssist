


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_assist/Constants/Util.dart';
import 'package:fyp_assist/Constants/httpErrorHandle.dart';
import 'package:fyp_assist/Models/User.dart';
import 'package:fyp_assist/Screens/HomeScreen.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Constants/Constants.dart';

class AuthService{
  void signUpUser({required context,required String email,required String password,required String fullname,String? section})async{
    try{
      User user=User('', fullname, password, section!, email, "", "");
      http.Response res=await http.post(Uri.parse('$uri/api/signup'),body:jsonEncode({
        'id':'',
        'name':fullname,
        'password':password,
        'section':section,
        'email':email,
        'role':'',
        'token':'',
      }),headers: <String,String>{
        'Content-Type':'application/json; charset=UTF-8',
      },
      );

    httpErrorHandle(response: res, context: context, onSuccess: (){
      showSnackBar(context, "Sign Up Success");
    });
    }catch(Exception){
      showSnackBar(context, Exception.toString());
    }
  }

  void signInUser({required context,required String email,required String password})async{
    try{
      http.Response res=await http.post(Uri.parse('$uri/api/signin'),body:jsonEncode({
        'id':'',
        'name':'',
        'password':password,
        'section':'',
        'email':email,
        'role':'',
        'token':'',
      }),headers: <String,String>{
        'Content-Type':'application/json; charset=UTF-8',
      },
      );
      print("body:"+res.body.toString());

      httpErrorHandle(response: res, context: context, onSuccess: () async {
        SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
        sharedPreferences.setString('auth-token', jsonDecode(res.body)['token']);
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>HomeScreen()), (route) => false);

      });
    }catch(Exception){
      showSnackBar(context, Exception.toString());
    }
  }

}