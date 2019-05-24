import 'package:flutter/material.dart';

class NotaFiscalScreen extends StatefulWidget {
  @override
  _NotaFiscalScreenState createState() => _NotaFiscalScreenState();
}

class _NotaFiscalScreenState extends State<NotaFiscalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nota Fiscal'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
