import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/home/build_drawer.dart';
import 'package:ui_app_teste/widgets/home/menu_item.dart';

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          MenuItem(
            icon: Icons.format_list_bulleted,
            function: _routeListContact,
            title: 'Lista de Contatos',
          )
        ],
      ),
    );
  }

  void _routeListContact() async {}
}
