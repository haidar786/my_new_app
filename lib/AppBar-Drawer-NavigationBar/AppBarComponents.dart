import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:my_new_app/Colors-Themes/HexColor.dart';

PreferredSize buildAppBar(String pageName) {
  return PreferredSize(
    preferredSize: Size.fromHeight(30),
    child: PressableDough(
      child: Container(
          child: Text('${pageName}',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 25
              )),
          color: HexColour("#FAFAFA"),
        ),
    ),
  );
}

BoxDecoration decoration() {
  return BoxDecoration(
    gradient: new LinearGradient(
        colors: [
          const Color(0xFF3366FF),
          const Color(0xFF00CCFF),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp
    ),
  );
}

SliverAppBar NotificationBuildAppBar(String pageName) {
  return  SliverAppBar(
    floating: false,
    pinned: false,
    expandedHeight: 75.0,
    stretchTriggerOffset: 75.0,
    //onStretchTrigger: refreshTheNotification,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: Text('${pageName}',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 25
          )),
      background: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
        ),
      ),
    )
  );
}
