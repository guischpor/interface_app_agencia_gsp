import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  InputField(
      {@required this.hint, @required this.icon, @required this.obscure});

  final style = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: style.backgroundApp,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: style.backgroundApp,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: style.backgroundApp,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
