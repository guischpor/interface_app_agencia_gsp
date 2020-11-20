import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

class BuildInfo extends StatelessWidget {
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(80.0),
                ),
                image: DecorationImage(
                  image: AssetImage('images/perfil2.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 3.0,
                  color: style.colorInputTextOrange,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Raissa Portela',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'GSP DESIGN',
                    style: TextStyle(
                      color: style.colorInputTextOrange,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
