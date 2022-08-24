import 'package:bestteam/constants.dart';
import 'package:flutter/material.dart';
import 'package:bestteam/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordField(
      {Key? key, required this.onChanged, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool _obscured= false;

    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
          hintText: "Tu Contraseña",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,

            // color: kPrimaryColor,
          ),

          /*   suffixIcon: Icon(
            onTap: (){
             _toggle();

            },
            child: Icon(
                _obscured ? Icons.visibility : Icons.visibility_off,
            ),


          ),*/

          border: InputBorder.none,
        ),
      ),
    );
  }
}
