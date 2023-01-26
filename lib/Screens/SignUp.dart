import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Classes/utils.dart';
import 'package:fyp_assist/Constants/Util.dart';
import 'package:fyp_assist/Services/AuthService.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndialog/ndialog.dart';
import '../Styles/Styles.dart';
import '../Styles/applayout.dart';
import '../Widgets/AnimatedContainer.dart';
import '../Widgets/SecondryButton.dart';
import 'LoginScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}



class _SignUpState extends State<SignUp> {

  AuthService authService=AuthService();
  bool student=true;
  bool faculty=false;
  Color checkedColor = Colors.white;
  Color unCheckedColor = Styles.surfaceColor;
  bool loading=false;

  final fullnameController=TextEditingController();
  final emailController=TextEditingController();
  final passController=TextEditingController();
  final rollnoController=TextEditingController();
  final deptController=TextEditingController();

  @override
  void dispose() {
    fullnameController.dispose();
    emailController.dispose();
    passController.dispose();
    deptController.dispose();
    rollnoController.dispose();
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
                          Text("Let's Get Started",style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.w400),),
                        ],
                      ),),
                    Gap(40),
                    Padding(
                      padding: EdgeInsets.all(22),
                      child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.name,
                            controller: fullnameController,
                            decoration: InputDecoration(
                              labelStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),
                              contentPadding: EdgeInsets.all(20.0),
                              filled: true,
                              fillColor: Styles.surfaceColor,
                              hintText: 'Full Name',
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
                            keyboardType: TextInputType.emailAddress,
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
                          Gap(15),
                      TextField(
                        controller: deptController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),
                          contentPadding: EdgeInsets.all(20.0),
                          filled: true,
                          fillColor: Styles.surfaceColor,
                          hintText: 'Department Name',
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
                          student?TextField(
                            controller: rollnoController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelStyle: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w400),
                              contentPadding: EdgeInsets.all(20.0),
                              filled: true,
                              fillColor: Styles.surfaceColor,
                              hintText: 'Rollno',
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
                          ) :SizedBox.shrink(),
                        ],
                      ),
                    ),
                 Container(
                        width: size.width,
                        height: size.height * 0.09,
                        margin: EdgeInsets.all(22),
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
                                    "Student",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  student=true;
                                  faculty=false;
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
                                    "Faculty",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15, fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  checkedColor = Styles.surfaceColor;
                                  unCheckedColor = Colors.white;
                                  student=false;
                                  faculty=true;
                                });
                              },
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
                      child: GestureDetector(
                          child: loading?CircularProgressIndicator():SecondryButton(title: 'SignUp',width: size.width,height: size.height*0.07,),
                          onTap:  (){
                            signup();
                          },
                      ),
                    ),
                    Gap(35),

                    Gap(5),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>LoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already a Member?",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300),),
                          Gap(5),
                          Text("Login",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w300,color: Styles.secondryColor),),
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

  // signUp()  {
  //   if(validateFields()){
  //     if(student){
  //       // authService.signUpUser(context: context, email: emailController.text, password: passController.text, fullname: fullnameController.text,section: sectionController.text);
  //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  //     }else{
  //       // authService.signUpUser(context: context, email: emailController.text, password: passController.text, fullname: fullnameController.text,section: '');
  //     }
  //   }else{
  //
  //   }
  //
  //
  //
  // }
  Future signup() async{
   if(validateFields())
     {
      try{
        ProgressDialog progressdialog=ProgressDialog(context, title: Text('Please Wait'), message: Text('Signing up...'));
        progressdialog.show();
        FirebaseAuth auth= FirebaseAuth.instance;
        UserCredential userCredential=await auth.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passController.text.trim());
        FirebaseFirestore firestore=FirebaseFirestore.instance;
        String uid=userCredential.user!.uid;
        if(student)
          {
            try{
              firestore.collection('students').doc(uid).set({
                'name':fullnameController.text.trim(),
                'rollno':rollnoController.text.trim(),
                'dept':deptController.text.trim(),
                'role':"Student"
              });
            } catch (e) {
              print(e);
            }
          }
        else{
          firestore.collection('faculty').doc(uid).set({
            'name':fullnameController.text.trim(),
            'dept':deptController.text.trim(),
            'role':"Faculty"
          });
          progressdialog.dismiss();
        }
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        showMessage("Successfully SignedIn");
      }on FirebaseAuthException catch (e) {
        utils.showSnackBar(e.message);
      }
    //   catch(e)
    // {
    //   showMessage("Error occured");
    // }
     }
  }
  void showMessage(String s) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(s)),
    );
  }
  validateFields() {
    if(student){
      if(fullnameController.text.isEmpty){
        showMessage("Must Enter Full Name");
        return false;
      }else if(emailController.text.isEmpty){
        showMessage("Must Enter Email Address");
        return false;
      }
      else if (deptController.text.isEmpty)
      {
        showMessage("Must Enter Departmet Name");
        return false;
      }
      else if (passController.text.length <6)
          {
            showMessage("Password length must be greater than 6");
            return false;
          }
      else if(passController.text.isEmpty){
        showMessage("Must Enter Password");
        return false;
      }else if(rollnoController.text.isEmpty){
        showMessage("Must Enter Section");
        return false;
      }

      return true;
    }else{
      if(fullnameController.text.isEmpty){
        showMessage("Must Enter Full Name");
        return false;
      }else if(emailController.text.isEmpty){
        showMessage("Must Enter Email Address");
        return false;
      }else if(passController.text.isEmpty){
        showMessage("Must Enter Password");
        return false;
      }
      return true;
    }

  }
}
