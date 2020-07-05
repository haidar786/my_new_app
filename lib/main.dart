import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'AppBar-Drawer-NavigationBar/DrawerComponents.dart';
import 'AppBar-Drawer-NavigationBar/NavigationBarComponents.dart';
import 'NotificationPage/ScrollableList/ScrollableNotificationList.dart';

main()  {

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  List<Icon>  mine= [Icon(Icons.ac_unit),Icon(Icons.free_breakfast),Icon(Icons.dashboard)];



  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: buildDrawer(),
        appBar: AppBar(
            title: Text("APP")),
        //body: ScrollableList(mine, mine1,context),
        bottomNavigationBar: bottomBar(),
      ),
    );
  }


}







