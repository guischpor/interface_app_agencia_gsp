import 'package:flutter/material.dart';

class FinanScreen extends StatefulWidget {
  @override
  _FinanScreenState createState() => _FinanScreenState();
}

class _FinanScreenState extends State<FinanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financeiro'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
