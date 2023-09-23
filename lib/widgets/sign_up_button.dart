import 'package:flutter/material.dart';
import 'package:registration_firebase/pages/sign_up_page.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Don't have an account?"),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: const Text(
              "Sing Up",
              style: TextStyle(color: Colors.orangeAccent),
            ))
      ],
    );
  }
}
