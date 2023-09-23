import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function press;
  const MyButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          press();
        },
        child: Container(
          height: 60,
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.orangeAccent),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ));
  }
}
