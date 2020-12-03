import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/register_screen.dart';

class RegisterButton extends StatefulWidget {
  String title;

  RegisterButton({@required this.title});

  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
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
        widget.title,
        style: TextStyle(letterSpacing: 0.8),
      ),
    );
  }
}
