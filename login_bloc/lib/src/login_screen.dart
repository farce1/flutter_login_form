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
      padding: EdgeInsets.all(10.0),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(
              margin: EdgeInsets.only(top: 10.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'you@example.com',
          labelText: 'Email',
        ),
      );

  Widget passwordField() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          hintText: 'Enter Password',
          labelText: 'Password',
        ),
      );

  Widget submitButton() => RaisedButton(
        child: Text('Submit'),
        onPressed: () {},
        color: Colors.blue,
      );
}
