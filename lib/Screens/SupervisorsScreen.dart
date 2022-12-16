import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/SearchBar.dart';
import '../Widgets/SupervisorContainer.dart';
import '../Widgets/TitleNavigation.dart';

class SupervisorsScreen extends StatefulWidget {
  const SupervisorsScreen({Key? key}) : super(key: key);

  @override
  State<SupervisorsScreen> createState() => _SupervisorsScreenState();
}

class _SupervisorsScreenState extends State<SupervisorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: Column(
        children: [
          TitleNavigation(title: 'Supervisors',),
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
                            SupervisorContainer(email: 'asimfayyaz@au.edu.pk',expertise: 'Web Developement',imgAsset: 'assets/supervisor.png',title: 'Asim Fayyaz'),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
                            Padding(padding:EdgeInsets.only(top: 20),child: SupervisorContainer(email: 'farkhandazafar@au.edu.pk',expertise: 'Visual Programming',imgAsset: 'assets/supervisor.png',title: 'Farkhanda Zafar')),
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
