import 'package:flutter/material.dart';
import 'package:ui_app_teste/styles/styles.dart';

class MenuItem extends StatelessWidget {
  Styles style = Styles();

  final String title;
  final Function function;
  final IconData icon;

  MenuItem({
    @required this.title,
    @required this.function,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              12.0,
            ),
          ),
        ),
        elevation: 4,
        child: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: style.backgroundApp,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0)),
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 48.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
