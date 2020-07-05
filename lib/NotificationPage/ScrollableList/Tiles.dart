import 'dart:ui';

import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/Colors-Themes/HexColor.dart';

import 'Avatars.dart';

Widget Tile(avatar leading, String person, String notificationText, DateTime date, BuildContext context) {
  return SizedBox(
    width: 240,
    height:180,
    child: Card(
      color: HexColour("#C6C6C6"),
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: leading,
            title: Text('${person}'),
            subtitle: Text('$date'),
          ),
          SizedBox(width:7.5),
          Expanded(child: Text('${notificationText}')),
          requiredWidget(),
          Divider(
            color: Colors.blueGrey,
            height: 20,
            thickness: 0.6,
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
    ),
  );
}

  Widget requiredWidget() {
    return Container();
  }

                              // DEPRECATED
Container VerticalCell(String notification, DateTime date) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(5),
    child: Column(
      children: <Widget>[
        Text('${notification}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),),

        SizedBox(height: 20.0,),

        Text('${date}',
        style: TextStyle(
            fontSize: 12.0,
            color: Colors.black54)
        ),
      ],
    ),
  );
}
