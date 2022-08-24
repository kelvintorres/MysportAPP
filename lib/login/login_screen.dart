import 'package:flutter/material.dart';
import 'package:bestteam/Login/components/body.dart';

import '../menu.dart';
import '../menu1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
