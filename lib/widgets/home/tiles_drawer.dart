import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

class TilesDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function function;

  TilesDrawer({
    @required this.icon,
    @required this.title,
    @required this.function,
  });

  Styles style = Styles();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: style.iconColorOrange,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: style.colorInputTextOrange,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: function,
    );
  }
}
