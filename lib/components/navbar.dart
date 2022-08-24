import 'package:bestteam/screen/agenda.dart';
import 'package:bestteam/screen/jugador.dart';
import 'package:bestteam/screen/map.dart';
import 'package:bestteam/screen/programaragenda.dart';
import 'package:bestteam/screen/registrojugador.dart';
//import 'package:bestteam/screen/map.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kelvin'),
            accountEmail: Text('levintorres19@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/kelvin.png",
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.view_agenda),
            title: const Text('Horarios Programados'),
            onTap: () => null,
            /*  {
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>AgendaScreen()),

            ),
            },*/
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lista De Jugadores'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JugadorScreen()),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Mapa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mapa1()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.timelapse),
            title: const Text('Horario Equipo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DialogsExample()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration),
            title: const Text('Registro jugadores'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => registrojugador1()),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_agenda_outlined),
            title: const Text('Programar Agenda'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => programaragenda1()),
              ),
            },
          ),
          const Divider(),
          /* ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Policies'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () => null,
          ),*/
        ],
      ),
    );
  }
}
