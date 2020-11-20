import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/register/form_container.dart';
import 'package:ui_app_teste/widgets/register/signup_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //styles
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu a senha'),
        backgroundColor: style.backgroundAppPurple,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: style.backgroundAppPurple,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 30),
            child: Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 140,
            ),
          ),
          FormContainer(),
          SignUpButton()
        ],
      ),
    );
  }
}
