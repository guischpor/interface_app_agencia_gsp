import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/login/form_container.dart';
import 'package:ui_app_teste/widgets/login/signin_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //styles
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.backgroundApp,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Icon(
              Icons.monetization_on,
              color: Colors.white,
              size: 140,
            ),
          ),
          FormContainer(),
          SignInButton()
        ],
      ),
    );
  }
}
