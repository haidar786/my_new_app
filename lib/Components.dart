import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _CustomFromState();
  }

}

class _CustomFromState extends State<CustomForm>{

  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller1 = new TextEditingController();


  String _email;
  String _password;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextFormField(
              autocorrect: false,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Email'
              ),
              onSaved: (Value) => _email= Value,
            ),
            TextFormField(
              controller: _controller1,
              autocorrect: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock),
                  labelText: 'Password'
              ),
            ),
            TextFormField(
              autocorrect: false,
              autovalidate: true,
              autofocus: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock_outline),
                  labelText: 'Confirm Password'
              ),
              validator: (Value) {
                if (Value != _controller1.text) {
                  return "The field should be the same as Password";
                }
                return null;
              },
              onSaved: (Value) => _password = Value,
            ),
            RaisedButton(
              child: Text("Sign Up"),
              onPressed: ValidateAndSubmit,
            ),
          ]
      ),
    );
  }

   bool ValidateForm()  {
    final form = _formKey.currentState;

    if(form.validate()) {
      Scaffold
          .of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));
      return true;
    }
    return false;
  }

   ValidateAndSubmit() async {

    if(ValidateForm()) {

        AuthResult user =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
    }
  }

}
