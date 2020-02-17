import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Form(
          child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What is your email?',
              labelText: 'Email',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key),
              hintText: 'What is yor password?',
              labelText: 'Password',
            ),
          ),
        ],
      )),
    );
  }
}
