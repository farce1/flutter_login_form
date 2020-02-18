import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

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
        validator: validateEmail,
        onSaved: (value) {
          email = value;
        },
      );

  Widget passwordField() => TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key),
          hintText: 'Enter Password',
          labelText: 'Password',
        ),
        validator: validatePassword,
        onSaved: (value) {
          password = value;
        },
      );

  Widget submitButton() => RaisedButton(
        child: Text('Submit'),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
          }
        },
        color: Colors.blue,
      );
}
