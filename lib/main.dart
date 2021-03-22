import 'package:flutter/material.dart';
import 'package:pizza_hub/App.dart';
import 'package:pizza_hub/Screen/Get_start.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pizza_hub/Screen/Home/home.dart';

  // Future<void>main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  //   runApp(MyApp());
  // }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Get_start(),
      debugShowCheckedModeBanner:false,
    );
  }
}