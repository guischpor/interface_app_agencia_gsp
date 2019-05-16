import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/register_screen.dart';

class RegisterButton extends StatelessWidget {
  String title;

  RegisterButton({@required this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RegisterScreen(),
          ),
        );
      },
      textColor: Colors.white,
      child: Text(
        title,
        style: TextStyle(letterSpacing: 0.8),
      ),
    );
  }
}
