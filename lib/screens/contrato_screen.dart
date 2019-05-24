import 'package:flutter/material.dart';

class ContratoScreen extends StatefulWidget {
  @override
  _ContratoScreenState createState() => _ContratoScreenState();
}

class _ContratoScreenState extends State<ContratoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contratos'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
    );
  }
}
