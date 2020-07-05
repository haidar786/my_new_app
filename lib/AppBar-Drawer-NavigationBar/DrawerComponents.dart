import 'package:flutter/material.dart';

Drawer buildDrawer() {
  return Drawer(
    child:  ListView(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      children: <Widget> [
        UserAccountsDrawerHeader(
            accountEmail: Text("Prat8746@gmail.com"),
            accountName: Text("Pratyush")),
        Cell(Text("Text right here"), Icon(Icons.laptop_mac)),
        Cell(Text("Text right here"), Icon(Icons.free_breakfast)),
        Cell(Text("Text right here"), Icon(Icons.free_breakfast)),
        Cell(Text("Text right here"), Icon(Icons.free_breakfast)),
      ],
    ),
  );
}

Container Cell(Text title, Icon icon) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(5),
    child: ListTile(
            leading: icon,
            title: title
        ),
    );
}
