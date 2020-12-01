import 'package:flutter/material.dart';
import 'package:ui_app_teste/widgets/login/custom_icon_button.dart';
import 'package:ui_app_teste/widgets/login/input_field.dart';
import 'package:ui_app_teste/styles/styles.dart';

class FormContainer extends StatefulWidget {
  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: 'Email',
              prefix: Icon(Icons.email),
              textInputType: TextInputType.emailAddress,
              onChanged: (String value) => {},
              enable: true,
            ),
            SizedBox(
              height: 16.0,
            ),
            InputField(
              hint: 'Senha',
              prefix: Icon(Icons.lock),
              obscure: true,
              onChanged: (String value) => {},
              enable: true,
              suffix: CustomIconButton(
                radius: 32,
                iconData: Icons.visibility,
                onTap: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
