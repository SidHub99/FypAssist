import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Screens/InviteStudents.dart';
import 'package:fyp_assist/Widgets/HomeButton.dart';
import 'package:gap/gap.dart';

import '../Widgets/GroupContainer.dart';
import '../Widgets/TitleNavigation.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TitleNavigation(title: 'Group',),
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                children: [
                  Row(
                    children: [
                      HomeButton(title: "Create new group", iconData: Icons.add),
                      Gap(15),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>InviteStudents()));
                          },
                          child: HomeButton(title: "Send Invitation", iconData: CupertinoIcons.envelope,
                      )),
                    ],
                  ),
                  Gap(20),
                  GroupContainer(),

                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
