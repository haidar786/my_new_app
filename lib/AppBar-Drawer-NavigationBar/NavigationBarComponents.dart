import 'package:flutter/material.dart';

BottomNavigationBar buildNavigationBar() {
  return BottomNavigationBar(
      selectedItemColor: Colors.indigo,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today)
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.notifications),
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.message),
        ),
      ]
  );
}



