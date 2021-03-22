import 'package:flutter/material.dart';
import 'package:pizza_hub/Screen/Get_start.dart';
import 'package:pizza_hub/Screen/Home/home.dart';
import 'package:pizza_hub/Screen/Login.dart';
import 'package:pizza_hub/Screen/Sign_up.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sign_up(),
    );
  }
}
