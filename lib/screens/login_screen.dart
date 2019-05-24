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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.only(top: 20, bottom: 20),
            //   child: Icon(
            //     Icons.store_mall_directory,
            //     size: 180,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              child: Image(
                image: AssetImage('images/logo2.png'),
                //width: 20,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            FormContainer(),
            SignInButton()
          ],
        ),
      ),
    );
  }
}
