
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Components.dart';

main() {

  runApp(new AuthApp());
}

class AuthApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue ),
      home: new LoginPage()
    );
  }

}

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: CustomForm(),
          )
      )
    );
  }
}


