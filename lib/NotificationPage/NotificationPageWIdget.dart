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
}

class NotificationPageWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _NotificationPageState();
  }
}

class _NotificationPageState extends State<NotificationPageWidget> {

  static List<avatar> avatars =[];
  static List<String> text =[];
  static List<DateTime> dates= [];
  static List<String> names=[];
  RefreshController _controller= new RefreshController(initialRefresh: false);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: HexColour("#FAFAFA"),
      home: Scaffold(
        appBar: buildAppBar("Notifications"),
        //bottomNavigationBar: bottomBar(),
        drawer: buildDrawer(),
        body: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height:20
                ),
                Text("Recent Announcements"),
                Divider(
                  color: Colors.blueGrey,
                  height: 20,
                  thickness: 0.6,
                  indent: 10,
                  endIndent: 10,
                ),
                ScrollableList(avatars, text, names, dates, context)
              ],
            ),
        ),
      )
    );
  }

  void _OnRefresh() {
    _controller.refreshCompleted();
  }

  void _onLoading() async {

    for(int i=0; i<5; i++){
      avatars[i]= avatar(Avataaar.random());
      dates[i] = mockDate();
      text[i]=mockString();
      names[i]=mockName();
    }
    if (mounted) setState(() {});
    _controller.loadComplete();
  }
}
