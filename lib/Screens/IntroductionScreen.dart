import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Screens/HomeScreen.dart';
import 'package:fyp_assist/Screens/LoginScreen.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../Styles/Styles.dart';
import '../Widgets/SecondryRoundButton.dart';
import 'SignUp.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  Color checkedColor = Colors.white;
  Color unCheckedColor = Styles.surfaceColor;
  bool register=true;


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/airlogo.png"),
              )),
            ),
            Column(
              children: [
                Text(
                  "Your FYP on the GO",
                  style: GoogleFonts.montserrat(
                      fontSize: 22, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                Gap(5),
                Text(
                  "reshaping paper-based system\nto completely remote-based system\nand we named it as FYP Assist",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Container(
              width: size.width,
              height: size.height * 0.09,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Styles.surfaceColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(
                children: [
                  InkWell(

                    child: Container(
                      width: size.width * 0.43,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: checkedColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        register=true;
                        checkedColor = Colors.white;
                        unCheckedColor = Styles.surfaceColor;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      width: size.width * 0.428,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: unCheckedColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        checkedColor = Styles.surfaceColor;
                        unCheckedColor = Colors.white;
                        register=false;
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    register?Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>SignUp())):Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginScreen()));

                  },
                    child: SecondryRoundButton(iconData: Icons.navigate_next_outlined)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  showGoogleUI() {
    showCupertinoDialog(context: context, builder: (builder){
      return CupertinoAlertDialog(
        title: Text("Google Login",style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),),
        content: Lottie.asset("assets/googlelogo.json",width: 100,height: 100),
        actions: [
          CupertinoActionSheetAction(
              isDestructiveAction: true,
              isDefaultAction: true,
              onPressed: (){
                Navigator.pop(context);


          }, child: Text('Close',style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400))),
           CupertinoActionSheetAction(
             isDestructiveAction: false,
               onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (builder)=>HomeScreen()));

          }, child: Text('Next',style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400))),

        ],
      );
    });
  }
}
