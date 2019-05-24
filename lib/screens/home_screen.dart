import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/cad_client_screen.dart';
import 'package:ui_app_teste/screens/client_screen.dart';
import 'package:ui_app_teste/screens/finan_screen.dart';
import 'package:ui_app_teste/screens/nota_fical_screen.dart';
import 'package:ui_app_teste/screens/orcamento_screen.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/home/build_drawer.dart';
import 'package:ui_app_teste/widgets/home/menu_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: style.backgroundApp,
      ),
      drawer: BuildDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MenuItem(
                icon: Icons.supervisor_account,
                function: _routeClient,
                title: 'Clientes',
                color: Colors.purpleAccent,
              ),
              MenuItem(
                icon: Icons.description,
                function: _routeOrcamento,
                title: 'Orçamentos',
                color: Colors.orangeAccent,
              ),
              MenuItem(
                icon: Icons.attach_money,
                function: _routeFinanceiro,
                title: 'Financeiro',
                color: Colors.lightBlueAccent,
              ),
              MenuItem(
                icon: Icons.note,
                function: _routeNotaFiscal,
                title: 'Nota Fiscal',
                color: Colors.greenAccent,
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MenuItem(
                icon: Icons.person_add,
                function: _routeCadCliente,
                title: 'Cadastrar Cliente',
                color: Colors.deepPurple,
              ),
              MenuItem(
                icon: Icons.monetization_on,
                function: _routePayments,
                title: 'Pagamentos',
                color: Colors.redAccent,
              ),
              MenuItem(
                icon: Icons.description,
                function: _routePayments,
                title: 'Orçamentos',
                color: Colors.orangeAccent,
              ),
              MenuItem(
                icon: Icons.attach_money,
                function: _routePayments,
                title: 'Financeiro',
                color: Colors.lightBlueAccent,
              ),
            ],
          )
        ],
      ),
    );
  }

  void _routeClient() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ClientScreen(),
      ),
    );
  }

  void _routeOrcamento() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => OrcamentoScreen(),
      ),
    );
  }

  void _routeFinanceiro() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FinanScreen(),
      ),
    );
  }

  void _routeNotaFiscal() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NotaFiscalScreen(),
      ),
    );
  }

  void _routeCadCliente() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CadClienteScreen(),
      ),
    );
  }

  void _routePayments() async {}
}
