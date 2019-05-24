import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/cad_client_screen.dart';
import 'package:ui_app_teste/screens/client_screen.dart';
import 'package:ui_app_teste/screens/contrato_screen.dart';
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
          //MenuItems2()
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 5,
            //children: menuIcon,
            children: <Widget>[
              MenuIcon(
                title: 'Clientes',
                icon: Icons.supervisor_account,
                color: Colors.purpleAccent,
                iconColor: Colors.white,
                function: _routeClient,
              ),
              MenuIcon(
                title: 'Cadastrar Clientes',
                icon: Icons.person_add,
                color: Colors.deepPurpleAccent,
                iconColor: Colors.white,
                function: _routeCadCliente,
              ),
              MenuIcon(
                title: 'Orçamentos',
                icon: Icons.description,
                color: Colors.orangeAccent,
                iconColor: Colors.white,
                function: _routeOrcamento,
              ),
              MenuIcon(
                title: 'Financeiro',
                icon: Icons.attach_money,
                color: Colors.lightBlueAccent,
                iconColor: Colors.white,
                function: _routeFinanceiro,
              ),
              MenuIcon(
                title: 'Nota Fiscal',
                icon: Icons.note,
                color: Colors.greenAccent,
                iconColor: Colors.white,
                function: _routeNotaFiscal,
              ),
              MenuIcon(
                title: 'Contratos',
                icon: Icons.insert_drive_file,
                color: Colors.blue[700],
                iconColor: Colors.white,
                function: _routeContrato,
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

  void _routeContrato() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ContratoScreen(),
      ),
    );
  }
}
