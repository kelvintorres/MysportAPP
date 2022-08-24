import 'package:bestteam/components/navbar.dart';
import 'package:flutter/material.dart';

import 'package:bestteam/menu.dart';

class registrojugador1 extends StatefulWidget {
  const registrojugador1({Key? key}) : super(key: key);

  @override
  State<registrojugador1> createState() => _registrojugador1State();
}

class _registrojugador1State extends State<registrojugador1> {
  final nombreController = TextEditingController();
  final telefonoController = TextEditingController();
  final edadController = TextEditingController();
  final correoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('                RegistroJugador'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 60, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Fecha de ingreso',
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
                controller: nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  prefixIcon: Icon(Icons.article),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                controller: telefonoController,
                decoration: InputDecoration(
                  labelText: 'Telefono',
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                controller: edadController,
                decoration: InputDecoration(
                  labelText: 'Edad',
                  prefixIcon: Icon(Icons.cake_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: TextField(
                controller: correoController,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  prefixIcon: Icon(Icons.mail),
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
