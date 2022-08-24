import 'package:bestteam/components/navbar.dart';
import 'package:flutter/material.dart';

import 'package:bestteam/menu.dart';

class programaragenda1 extends StatefulWidget {
  const programaragenda1({Key? key}) : super(key: key);

  @override
  State<programaragenda1> createState() => _programaragenda1State();
}

class _programaragenda1State extends State<programaragenda1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('                ProgramarAgenda'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 60, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Fecha',
                  prefixIcon: Icon(Icons.date_range),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Jugador',
                  prefixIcon: Icon(Icons.accessibility),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Fecha de cita',
                  prefixIcon: Icon(Icons.date_range),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Hora Inicio',
                  prefixIcon: Icon(Icons.access_time),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Hora Fin',
                  prefixIcon: Icon(Icons.access_time),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Row(
                children: [
                  const SizedBox(width: 18),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: ElevatedButton(
                      child: const Text(
                        "Cancelar",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: ElevatedButton(
                      child: const Text(
                        "Guardar",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
