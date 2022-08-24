// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class User with ChangeNotifier {
//   late String id;
//   late String displayName;
//   late String photoURL;
//   late String email;

//   User({
//     required this.id,
//     required this.displayName,
//     required this.photoURL,
//     required this.email,
//   });

//   factory User.fromFirestore(DocumentSnapshot userDoc) {
//     Map userData = userDoc as Map;
//     return User(
//       id: userDoc.userDoc,
//       displayName: userData['displayName'],
//       photoURL: userData['photoURL'],
//       email: userData['email'],
//     );
//   }
// }
