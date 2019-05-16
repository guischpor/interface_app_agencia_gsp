import 'package:flutter/material.dart';

class BuildInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21),
      child: Row(
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
                image: AssetImage('images/perfil.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                width: 3.0,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Chris Evans',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text('CEO SYSTEMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
