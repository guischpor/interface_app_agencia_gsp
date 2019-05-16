import 'package:flutter/material.dart';
import 'package:ui_app_teste/widgets/register/input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: 'Username',
              icon: Icons.person,
              obscure: false,
            ),
            SizedBox(
              height: 16.0,
            ),
            InputField(
              hint: 'Email',
              icon: Icons.email,
              obscure: false,
            ),
            SizedBox(
              height: 16.0,
            ),
            InputField(
              hint: 'Password',
              icon: Icons.lock,
              obscure: true,
            ),
          ],
        ),
      ),
    );
  }
}
