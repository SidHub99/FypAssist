import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_assist/Widgets/TitleNavigation.dart';
import 'package:gap/gap.dart';

import '../Widgets/SingleTaskContainer.dart';
import 'DeliverablesDetailsScreen.dart';

class DeliverableScreen extends StatefulWidget {
  const DeliverableScreen({Key? key}) : super(key: key);

  @override
  State<DeliverableScreen> createState() => _DeliverableScreenState();
}

class _DeliverableScreenState extends State<DeliverableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: Column(
        children: [
          TitleNavigation(title: "Deliverables"),
          Expanded(child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>DeliverablesDetailsScreen()));
                    },
                      child: SingleTaskContainer(completed: false,)),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),
                  SingleTaskContainer(completed: true,),Gap(10),
                  SingleTaskContainer(completed: true,),Gap(10),
                  SingleTaskContainer(completed: true,),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),
                  SingleTaskContainer(completed: false,),Gap(10),


                ],
              ),
            ),
          ))
        ],
      ),

    );
  }
}
