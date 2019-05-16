import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/home/build_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: style.backgroundApp,
      ),
      drawer: BuildDrawer(),
      body: Container(),
    );
  }
}
