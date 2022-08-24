import 'package:bestteam/components/navbar.dart';
import 'package:bestteam/screen/agenda.dart';
import 'package:flutter/material.dart';

import 'package:bestteam/menu.dart';

class Menu1 extends StatefulWidget {
  const Menu1({Key? key}) : super(key: key);

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('MySportAPP'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 76, 62, 169),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://www.albat.com/__export/1608598390561/sites/debate/img/2020/12/21/diamante_de_bxisbol_crop1608598343271.jpg_776946886.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Beisbol',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://procrastinafacil.com/wp-content/uploads/2022/04/nombres-para-equipos-de-basket-1.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Basquetbol',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://curiosfera-historia.com/wp-content/uploads/Historia-del-futbol.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Futbol',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://pikwizard.com/photos/c70a5448b00ae85f75cf0ea1ac5d78d3-m.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Tenis',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://conceptodefinicion.de/wp-content/uploads/2021/11/voleibol_2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Boleibol',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.transparent,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DialogsExample(),
                    ),
                  );
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://tecnohotelnews.com/wp-content/uploads/2018/04/shutterstock_158881226.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        'Golf',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
