import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Screens/HomeScreen.dart';
import 'package:fyp_assist/Screens/LoginScreen.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Styles/applayout.dart';
import 'IntroductionScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width ,
            height: size.height*0.27,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/airlogo.png"),
                )),
          ),
          Gap(20),
          Text("FYP Assist",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)

        ],
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
      StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData)
            {
              return HomeScreen();
            }
          else return LoginScreen();
        }),
      Navigator.push(context, MaterialPageRoute(builder: (builder)=>IntroductionScreen())),
    });
  }
}

