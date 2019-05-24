import 'package:flutter/material.dart';

class CadClienteScreen extends StatefulWidget {
  @override
  _CadClienteScreenState createState() => _CadClienteScreenState();
}

class _CadClienteScreenState extends State<CadClienteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Cliente'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
