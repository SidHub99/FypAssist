import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Widgets/StudentContainer.dart';
import 'package:http/http.dart';
import '../Widgets/SearchBar.dart';
import '../Widgets/SupervisorContainer.dart';
import '../Widgets/TitleNavigation.dart';

class InviteStudents extends StatefulWidget {
  const InviteStudents({Key? key}) : super(key: key);

  @override
  State<InviteStudents> createState() => _InviteStudentsState();
}

class _InviteStudentsState extends State<InviteStudents> {
  @override
  String name="";
  Future getadata() async{
    var ref= await FirebaseFirestore.instance.collection('students').doc().get();
    setState(() {
      name=ref.data()!['name'];
    });
}
  void initState(){
    getadata();
    super.initState();

  }
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body:StreamBuilder<QuerySnapshot>(
        stream:FirebaseFirestore.instance.collection("students").snapshots() ,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            if(snapshot.data!.docs.isEmpty){
              return const Center(
                child: Text('No students Yet'),
              );
            }
            else{
              return ListView.builder(itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                DocumentSnapshot data=snapshot.data!.docs[index];
                return
                  Column(
                    children: [
                      TitleNavigation(title: 'Students',),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(22),
                                child: SearchBar(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:22,right: 22,),
                                child: Column(
                                  children: [
                                    Padding(padding:EdgeInsets.only(top: 20),child: StudentContainer(interest: 'Flutter',imgAsset: 'assets/supervisor.png',title:data['name'] )),

                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      )
                    ],
                  );
                  });
            }
          }
          else{
    return const Center(
    child: CircularProgressIndicator(),
    );
          }
        }),
      );
  }
}

