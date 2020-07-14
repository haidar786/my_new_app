import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';
import 'package:mock_data/mock_data.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/AppBarComponents.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/DrawerComponents.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/NavigationBarComponents.dart';
import 'package:my_new_app/Colors-Themes/HexColor.dart';
import 'package:my_new_app/NotificationPage/ScrollableList/Avatars.dart';
import 'package:my_new_app/NotificationPage/ScrollableList/ScrollableNotificationList.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(NotificationPageWidget());
  int i =5;

}
  List<avatar> avatars =[avatar(Avataaar.random()), avatar(Avataaar.random()), avatar(Avataaar.random()), avatar(Avataaar.random()), avatar(Avataaar.random()) ];
  List<String> text =[mockString(),mockString(),mockString(),mockString(),mockString()];
  List<DateTime> dates= [mockDate(),mockDate(),mockDate(),mockDate(),mockDate()];
  List<String> names=[mockName(),mockName(),mockName(),mockName(),mockName()];

class NotificationPageWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _NotificationPageState();
  }
}

class _NotificationPageState extends State<NotificationPageWidget> {


  //RefreshController _controller= new RefreshController(initialRefresh: false);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: HexColour("#FAFAFA"),
      home: Scaffold(
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            buildAppBar("Notifications"),
            Text("Recent Announcements"),
            //ScrollableList(avatars, text, names, dates, context)
            ],
        ),
      ),
    );
  }




}
