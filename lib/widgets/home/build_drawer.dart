import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

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
          )
        ],
      ),
    );
  }
}
