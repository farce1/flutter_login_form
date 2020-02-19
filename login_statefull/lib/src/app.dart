import 'package:flutter/material.dart';
import './login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: LoginScreen(),
    ));
  }
}
