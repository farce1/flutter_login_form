import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
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
        validator: (value) {
          if (!value.contains('@')) {
            return 'Please enter a valid email.';
          }
        },
      );

  Widget passwordField() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          hintText: 'Enter Password',
          labelText: 'Password',
        ),
        validator: (value) {
          if (value.length < 6) {
            return 'Your password must be longer than 6 characters.';
          }
        },
      );

  Widget submitButton() => RaisedButton(
        child: Text('Submit'),
        onPressed: () => formKey.currentState.validate(),
        color: Colors.blue,
      );
}
