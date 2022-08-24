import 'package:bestteam/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:bestteam/menu.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key: key);

  @override
  State<Mapa1> createState() => _Mapa1State();
}

class _Mapa1State extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('                       Mapa'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: const WebView(
        initialUrl: 'https://www.google.es/maps/?hl=es',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
