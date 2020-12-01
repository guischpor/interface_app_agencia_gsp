import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final Widget prefix;
  final Widget suffix;
  final Color iconColor;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enable;

  InputField(
      {this.hint,
      this.icon,
      this.obscure = false,
      this.iconColor,
      this.prefix,
      this.suffix,
      this.textInputType,
      this.onChanged,
      this.enable,
      this.controller});

  final style = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: TextField(
        obscureText: obscure,
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        enabled: enable,
        style: TextStyle(
          color: style.colorInputTextOrange,
        ),
        decoration: InputDecoration(
          // icon: Icon(
          //   icon,
          //   color: iconColor,
          // ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: iconColor,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
        //textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
