import 'package:flutter/material.dart';

import '../components/navbar.dart';

class JugadorScreen extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<JugadorScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: const NavBar(),
          appBar: AppBar(
            title: const Text('             Lista de Jugadores'),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          body: ListView(children: <Widget>[
            const Center(
                child: Text(
              '',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: const [
                DataColumn(
                    label: Text('ID',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Nombre',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Apellido',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('José')),
                  DataCell(Text('Jaquez')),
                ]),
                DataRow(cells: [
                  DataCell(Text('7')),
                  DataCell(Text('Ramón')),
                  DataCell(Text('Mercado')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11')),
                  DataCell(Text('Pedro')),
                  DataCell(Text('Nuñez')),
                ]),
                DataRow(cells: [
                  DataCell(Text('16')),
                  DataCell(Text('Juan')),
                  DataCell(Text('Rodríguez')),
                ]),
              ],
            ),
          ])),
    );
  }
}
