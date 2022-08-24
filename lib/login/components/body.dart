import 'package:bestteam/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bestteam/Login/components/background.dart';
//import 'package:bestteam/Screens/Signup/signup_screen.dart';
//import 'package:bestteam/components/already_have_an_account_acheck.dart';
import 'package:bestteam/components/rounded_button.dart';
import 'package:bestteam/components/rounded_input_field.dart';
import 'package:bestteam/components/rounded_password_field.dart';
import 'package:bestteam/login/components/social_icon.dart';

import '../../screen/firebase_auth_methods.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final Color color, textColor;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Body({
    Key? key,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);
  void loginUser(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseAuthMethods(auth).loginWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/Logo2.png",
              height: size.height * 0.15,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              controller: emailController,
              hintText: "Tu Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Iniciar Sesion",
              press: () {
                loginUser(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu()),
                );
              },
            ),
            //  },
            //      ),
            /*  ElevatedButton(

              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  primary: color,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(
                      color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) { return Menu();
                  },
                  ),
                );
              },
            ),*/

            SizedBox(height: size.height * 0.03),
            /* AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                     // return SignUpScreen();
                    },
                  ),
                );
              },
            ),*/

            // OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/images/facebook3.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/images/twitter.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/images/google.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
