import 'package:flutter/material.dart';
import 'package:registration_firebase/pages/sign_up_page.dart';

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({
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
