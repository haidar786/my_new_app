
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/AppBarComponents.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/DrawerComponents.dart';
import 'package:my_new_app/AppBar-Drawer-NavigationBar/NavigationBarComponents.dart';

class contacts extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _contactsPageState();
  }

}

class _contactsPageState extends State<contacts> {

  void apiCall() {}

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppBar("CHAT"),
        drawer: buildDrawer(),
        //bottomNavigationBar: buildNavigationBar(),

      )
    );
  }
}
