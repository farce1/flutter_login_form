import 'package:flutter/material.dart';
import './loginscreen.dart';

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
