import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labeltext;
  final controller;
  final bool obscureText;
  final bool isPassword;
  const TextFieldWidget({
    super.key,
    required this.labeltext,
    required this.controller,
    this.obscureText = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: isPassword
              ? Icon(
                  Icons.key,
                  color: Colors.grey[900],
                )
              : Icon(
                  Icons.mail,
                  color: Colors.grey[900],
                ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          labelText: labeltext,
          labelStyle: TextStyle(
            color: Colors.grey[700],
          )),
    );
  }
}
