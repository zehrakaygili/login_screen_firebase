import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration_firebase/pages/login_page.dart';
import 'package:registration_firebase/widgets/background.dart';
import 'package:registration_firebase/widgets/my_button.dart';
import 'package:registration_firebase/widgets/my_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Background(),
              Text(
                "SIGN UP",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: MyTextField(
                  labeltext: "Email",
                  controller: emailController,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: MyTextField(
                  labeltext: "Password",
                  controller: passwordController,
                  obscureText: true,
                  isPassword: true,
                ),
              ),
              MyButton(
                text: "Create New Account",
                press: () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
