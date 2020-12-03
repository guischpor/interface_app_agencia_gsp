import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:ui_app_teste/stores/login_store.dart';
import 'package:ui_app_teste/widgets/login/custom_icon_button.dart';
import 'package:ui_app_teste/widgets/login/input_field.dart';
import 'package:ui_app_teste/styles/styles.dart';

class FormContainer extends StatefulWidget {
  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  Styles style = Styles();

  LoginStore loginStore;

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    loginStore = Provider.of<LoginStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            Observer(builder: (_) {
              return InputField(
                hint: 'Email',
                prefix: Icon(Icons.email),
                textInputType: TextInputType.emailAddress,
                onChanged: loginStore.setEmail,
                enable: !loginStore.loading,
              );
            }),
            SizedBox(
              height: 16.0,
            ),
            Observer(builder: (_) {
              return InputField(
                hint: 'Senha',
                prefix: Icon(Icons.lock),
                obscure: !loginStore.passwordVisible,
                onChanged: loginStore.setPassword,
                enable: !loginStore.loading,
                suffix: CustomIconButton(
                  radius: 32,
                  iconData: loginStore.passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onTap: loginStore.togglePasswordVisibility,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
