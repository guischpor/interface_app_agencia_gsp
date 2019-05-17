import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/home_screen.dart';
import 'package:ui_app_teste/screens/login_screen.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/home/tiles_drawer.dart';

import 'build_info.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  Styles style = Styles();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: style.backgroundApp,
            ),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: BuildInfo(),
          ),
          TilesDrawer(
            icon: Icons.home,
            title: 'Home',
            function: _routeHome,
          ),
          TilesDrawer(
            icon: Icons.supervisor_account,
            title: 'Lista de Contatos',
            function: _routeListContact,
          ),
          TilesDrawer(
            icon: Icons.monetization_on,
            title: 'Pagamentos',
            function: _routePayments,
          ),
          TilesDrawer(
            icon: Icons.exit_to_app,
            title: 'Sair',
            function: _routeExit,
          ),
        ],
      ),
    );
  }

  void _routeHome() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  void _routeListContact() async {}

  void _routePayments() async {}

  void _routeExit() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
}
