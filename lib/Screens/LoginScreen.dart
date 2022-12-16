import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../Styles/Styles.dart';
import '../Widgets/AnimatedContainer.dart';
import '../Widgets/SecondryButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                Padding(
                    padding: EdgeInsets.only(top: 50,left: 22,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello Again!",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w400),),
                  ],
                ),),
                Gap(5),
                Padding(
                    padding: EdgeInsets.only(left: 22,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome Back you've\nbeen missed",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w300),textAlign: TextAlign.center,),
                  ],
                ),),
                Gap(40),
                Padding(
                    padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.all(20.0),
                            filled: true,
                            fillColor: Styles.surfaceColor,
                            hintText: 'example@au.edu.pk',
                          hintStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Styles.surfaceColor,width: 1)
                          ),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: BorderSide(color: Styles.surfaceColor,width: 1)
                          ),
                        ),
                      ),
                      Gap(15),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.all(20.0),
                            filled: true,
                            fillColor: Styles.surfaceColor,
                            hintText: 'Password',
                          hintStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Styles.surfaceColor,width: 1)
                          ),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22),
                              borderSide: BorderSide(color: Styles.surfaceColor,width: 1)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22,right: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Recover Password",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
                Gap(35),
                Padding(
                    padding: EdgeInsets.all(22),
                  child: SecondryButton(title: 'Login',width: size.width,height: size.height*0.07,),

                ),
                Gap(35),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 22),
                      child: Container(
                        height: 2,
                        width: size.width*0.284,
                        color: Styles.surfaceColor,
                      ),
                    ),
                    Gap(10),
                    SizedBox(
                        width: size.width*0.29,
                      child: Text("Or continue with",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w300),),
                      ),
                    Padding(
                      padding: EdgeInsets.only(right: 22),
                      child: Container(
                        height: 2,
                        width: size.width*0.284,
                        color: Styles.surfaceColor,
                      ),
                    ),
                  ],
                ),
                Gap(35),
                AnimatedContainerBox(width: size.width*0.2,height: size.height*0.09,assetName: 'assets/googlelogo.json',),
                Gap(35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a Member?",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300),),
                    Gap(5),
                    Text("Register now",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300,color: Styles.secondryColor),),
                  ],
                ),




              ],
            ),
          ))
        ],
      ),

    );
  }
}
