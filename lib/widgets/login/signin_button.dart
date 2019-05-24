import 'package:flutter/material.dart';
import 'package:ui_app_teste/widgets/login/register_button.dart';
import 'build_signin_button.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        BuildSigInButton(
          title: 'Entrar',
        ),
        SizedBox(
          height: 40,
        ),
        //RegisterButton( title: 'Não possui uma conta? Cadastre-se',)
      ],
    );
  }
}
