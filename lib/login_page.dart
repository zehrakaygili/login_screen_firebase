import 'package:flutter/material.dart';
import 'package:registration_firebase/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/back.png"))),
          ),
          const Text(
            "WELCOME!",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFieldWidget(
              labeltext: "Email",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFieldWidget(
              labeltext: "Password",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: SocialButton(
              iconPath: 'assets/images/google.png',
              label: 'Continue with Google',
              horizontalPadding: 35,
              verticalpadding: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orangeAccent),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(color: Colors.orangeAccent),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final double verticalpadding;
  const SocialButton(
      {Key? key,
      required this.iconPath,
      required this.label,
      this.horizontalPadding = 70,
      this.verticalpadding = 13})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Image.asset(
        iconPath,
        width: 30,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: verticalpadding,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String labeltext;
  const TextFieldWidget({
    super.key,
    required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
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
