import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuItems2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuIcon,
    );
  }
}

List<MenuIcon> menuIcon = [
  MenuIcon(
    title: 'Clientes',
    icon: Icons.supervisor_account,
    color: Colors.purpleAccent,
    iconColor: Colors.white,
    function: () {},
  ),
  MenuIcon(
    title: 'Cadastrar Clientes',
    icon: Icons.person_add,
    color: Colors.deepPurpleAccent,
    iconColor: Colors.white,
    function: () {},
  ),
  MenuIcon(
    title: 'Orçamentos',
    icon: Icons.description,
    color: Colors.orangeAccent,
    iconColor: Colors.white,
    function: () {},
  ),
  MenuIcon(
    title: 'Financeiro',
    icon: Icons.attach_money,
    color: Colors.lightBlueAccent,
    iconColor: Colors.white,
    function: () {},
  ),
  MenuIcon(
    title: 'Nota Fiscal',
    icon: Icons.note,
    color: Colors.greenAccent,
    iconColor: Colors.white,
    function: () {},
  ),
  MenuIcon(
    title: 'Contratos',
    icon: Icons.insert_drive_file,
    color: Colors.blue[700],
    iconColor: Colors.white,
    function: () {},
  ),
];

class MenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final Function function;

  MenuIcon({this.title, this.icon, this.color, this.iconColor, this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 40,
              color: iconColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
