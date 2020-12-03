import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:ui_app_teste/screens/home_screen.dart';
import 'package:ui_app_teste/stores/login_store.dart';
import 'package:ui_app_teste/styles/styles.dart';

class BuildSigInButton extends StatefulWidget {
  String title;

  BuildSigInButton({@required this.title});

  @override
  _BuildSigInButtonState createState() => _BuildSigInButtonState();
}

class _BuildSigInButtonState extends State<BuildSigInButton> {
  LoginStore loginStore;

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loginStore = Provider.of<LoginStore>(context);

    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      if (loggedIn)
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 350,
        child: Observer(builder: (_) {
          return RaisedButton(
            textColor: Colors.white,
            child: loginStore.loading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : Text(
                    widget.title,
                  ),
            //color: style.colorButtonSignInUpOrange,
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            onPressed: loginStore.loginPressed,
          );
        }));
  }

  @override
  void dispose() {
    dispose();
    super.dispose();
  }
}
