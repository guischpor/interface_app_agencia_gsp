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
            height: 16,
          ),
          MenuItem(
            icon: Icons.supervisor_account,
            function: _routeListContact,
            title: 'Lista de Contatos',
          ),
          MenuItem(
            icon: Icons.monetization_on,
            function: _routePayments,
            title: 'Pagamentos',
          ),
        ],
      ),
    );
  }

  void _routeListContact() async {}

  void _routePayments() async {}
}
