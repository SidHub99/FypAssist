import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fyp_assist/Classes/utils.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Services/AuthService.dart';
import 'package:fyp_assist/Styles/applayout.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndialog/ndialog.dart';
import '../Styles/Styles.dart';
import '../Widgets/SecondryButton.dart';
import 'HomeScreen.dart';
import 'SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController=TextEditingController();
  final passController=TextEditingController();
  AuthService authService=AuthService();


  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
  }

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
                        controller: emailController,
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
                        controller: passController,
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
                GestureDetector(
                  onTap: (){
                    signin();
                  },
                  child: Padding(
                      padding: EdgeInsets.all(22),
                    child: SecondryButton(title: 'Login',width: size.width,height: size.height*0.07,),

                  ),
                ),
                Gap(35),

                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>SignUp()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a Member?",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300),),
                      Gap(5),
                      Text("Register now",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300,color: Styles.secondryColor),),
                    ],
                  ),
                ),




              ],
            ),
          ))
        ],
      ),

    );

  }

  signin() async {
    if(validateFields()){
      ProgressDialog progressdialog=ProgressDialog(context, title: Text('Please wait'), message: Text('Logging In...'));
      var email=emailController.text.trim();
      var pass=passController.text.trim();
      progressdialog.show();
      try{
        FirebaseAuth firebaseAuth=FirebaseAuth.instance;
        UserCredential userCredential=await firebaseAuth.signInWithEmailAndPassword(email: email, password: pass);
        progressdialog.dismiss();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      }on FirebaseAuthException catch (e) {
        progressdialog.dismiss();
        utils.showSnackBar(e.message);
      }


    }
    // if(validateFields()) {
    //    authService.signInUser(context: context, email: emailController.text, password: passController.text, );
    //
    // }
  }
  void showMessage(String s) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(s)),
    );
  }
  bool validateFields() {
    if(emailController.text.isEmpty){
      showMessage("Must Enter Email Address");
      return false;
    }else if(passController.text.isEmpty){
      showMessage("Must Enter Password");
      return false;
    }
    return true;
  }


}
