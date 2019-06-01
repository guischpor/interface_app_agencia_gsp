import 'package:flutter/material.dart';
import 'build_signup_button.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        BuildSigInButton(
          title: 'Enviar',
        ),
      ],
    );
  }
}
