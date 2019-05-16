import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  String title;

  RegisterButton({@required this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      textColor: Colors.white,
      child: Text(
        title,
        style: TextStyle(letterSpacing: 0.8),
      ),
    );
  }
}
