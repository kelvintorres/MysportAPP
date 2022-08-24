import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UsersListInfo extends StatefulWidget {
  @override
  _UsersListInfoState createState() => _UsersListInfoState();
}

class _UsersListInfoState extends State<UsersListInfo> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('jugadores').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs
              .map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Text(data['nombre']),
                  subtitle: Text(
                      '${data['telefono']} ${data['edad']} ${data['correo']}'),
                );
              })
              .toList()
              .cast(),
        );
      },
    );
  }
}
