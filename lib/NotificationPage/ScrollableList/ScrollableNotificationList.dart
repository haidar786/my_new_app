import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';

import 'Avatars.dart';
import 'Tiles.dart';


Widget ScrollableList(List<avatar> images, List<String> notificationsText, List<String> person, List<DateTime> dates, BuildContext context) {
  return Container(
    child: ListView.builder(
        itemCount: notificationsText.length,
        itemBuilder: (context,index) {
          return Tile(images[index], person[index], notificationsText[index], dates[index], context);
        }
    ),
  );
}

