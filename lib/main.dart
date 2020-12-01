import 'package:flutter/material.dart';
//import 'package:ui_app_teste/screens/home_screen.dart';
import 'package:ui_app_teste/screens/login_screen.dart';
import 'styles/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Styles style = Styles();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        cursorColor: Colors.orange,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
