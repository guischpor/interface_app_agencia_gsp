import 'package:flutter/material.dart';

class OrcamentoScreen extends StatefulWidget {
  @override
  _OrcamentoScreenState createState() => _OrcamentoScreenState();
}

class _OrcamentoScreenState extends State<OrcamentoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orçamentos'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
