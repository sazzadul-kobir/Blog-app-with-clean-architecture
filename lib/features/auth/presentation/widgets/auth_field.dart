

import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool ObsecureText;
  const AuthField({super.key, required this.hint,
    required this.controller, this.ObsecureText=false});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
        decoration: InputDecoration(
          hintText: hint
        ),
      obscureText: ObsecureText,
      validator: (value){
         if(value!.isEmpty){
           return "$hint is missing";
         }
         return null;
      },
    );
  }
}
