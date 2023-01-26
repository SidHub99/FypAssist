import 'package:flutter/material.dart';
import 'package:fyp_assist/Classes/utils.dart';
import 'package:fyp_assist/Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Classes/utils.dart';
import 'Classes/utils.dart';
import 'Classes/utils.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: utils.messengerKey,
      debugShowCheckedModeBanner: false,
      title: 'FYP Assist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

