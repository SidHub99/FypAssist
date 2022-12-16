import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/SearchBar.dart';
import '../Widgets/SupervisorContainer.dart';
import '../Widgets/TitleNavigation.dart';

class CoordinatorsScreen extends StatefulWidget {
  const CoordinatorsScreen({Key? key}) : super(key: key);

  @override
  State<CoordinatorsScreen> createState() => _CoordinatorsScreenState();
}

class _CoordinatorsScreenState extends State<CoordinatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: Column(
        children: [
          TitleNavigation(title: 'Coordinators',),
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
                        SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),
                        Padding(padding:EdgeInsets.only(top: 20),child:                         SupervisorContainer(email: 'example@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/coordinators.png',title: 'Tariq Naeem'),),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
