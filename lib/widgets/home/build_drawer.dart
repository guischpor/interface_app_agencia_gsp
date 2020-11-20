import 'package:flutter/material.dart';
import 'package:ui_app_teste/screens/cad_client_screen.dart';
import 'package:ui_app_teste/screens/client_screen.dart';
import 'package:ui_app_teste/screens/contrato_screen.dart';
import 'package:ui_app_teste/screens/finan_screen.dart';
import 'package:ui_app_teste/screens/home_screen.dart';
import 'package:ui_app_teste/screens/login_screen.dart';
import 'package:ui_app_teste/screens/nota_fical_screen.dart';
import 'package:ui_app_teste/screens/orcamento_screen.dart';
import 'package:ui_app_teste/styles/styles.dart';
import 'package:ui_app_teste/widgets/home/tiles_drawer.dart';

import 'build_info.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  Styles style = Styles();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: style.backgroundAppPurple,
            ),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: BuildInfo(),
          ),
          // TilesDrawer(
          //   icon: Icons.home,
          //   title: 'Home',
          //   function: _routeHome,
          // ),
          TilesDrawer(
            icon: Icons.supervisor_account,
            title: 'Clientes',
            function: _routeClient,
          ),
          TilesDrawer(
            icon: Icons.person_add,
            title: 'Cadastrar Clientes',
            function: _routeCadCliente,
          ),
          TilesDrawer(
            icon: Icons.description,
            title: 'Orçamentos',
            function: _routeOrcamento,
          ),
          TilesDrawer(
            icon: Icons.attach_money,
            title: 'Financeiro',
            function: _routeFinanceiro,
          ),
          TilesDrawer(
            icon: Icons.note,
            title: 'Nota Fiscal',
            function: _routeNotaFiscal,
          ),
          TilesDrawer(
            icon: Icons.insert_drive_file,
            title: 'Contratos',
            function: _routeContrato,
          ),
          TilesDrawer(
            icon: Icons.exit_to_app,
            title: 'Sair',
            function: _routeExit,
          ),
        ],
      ),
    );
  }

  void _routeHome() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
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

  void _routeExit() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
}
