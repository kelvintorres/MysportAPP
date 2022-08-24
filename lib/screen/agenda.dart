import 'package:bestteam/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Adapted from Eajy's flutter demo app:
// https://github.com/Eajy/flutter_demo/blob/master/lib/route/homeDialogs.dart.

class DialogsExample extends StatelessWidget {
  const DialogsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text(
          '              Horario Equipo',
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: ListView(
        padding: const EdgeInsets.all(32.0),
        children: <Widget>[
          const SizedBox(height: 40),
          Image.network(
            'https://iforum-sg.c.huawei.com/dddd/latin/images/2021/2/16/38d4d37a-93f7-46e0-8a7b-379f78a46218.gif',
            fit: BoxFit.contain,
            height: 100,
            width: 100,
          ),
          ////// Time Picker Dialog.

          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: () {
              final DateTime now = DateTime.now();
              showTimePicker(
                context: context,
                initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
              ).then((TimeOfDay? value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value.format(context)),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ),
                  );
                }
              });
            },
            child: const Text('Programar Hora'),
          ),
          ////// Date Picker Dialog.
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2025),
              ).then((DateTime? value) {
                if (value != null) {
                  DateTime _fromDate = DateTime.now();
                  _fromDate = value;
                  final String date = DateFormat.yMMMd().format(_fromDate);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Selected date: $date')),
                  );
                }
              });
            },
            child: const Text('Programar Fecha'),
          ),
          ////// DateRange Picker Dialog.
          const Text(
            "En este apartado se programan las fechas y horas de los eventos deportivos que se realizarán.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 17),
          ),
          ////// Bottom Sheet Dialog.
        ]
            .map(
              (Widget button) => Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: button,
              ),
            )
            .toList(),
      ),
    );
  }
}
