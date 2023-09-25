import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration_firebase/pages/home_page.dart';
import 'package:registration_firebase/widgets/background.dart';
import 'package:registration_firebase/widgets/my_button.dart';
import 'package:registration_firebase/widgets/my_text_field.dart';
import 'package:registration_firebase/widgets/sign_up_text_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Background(),
              Text(
                "LOGIN",
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
                press: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                },
                text: 'Login',
              ),
              SignUpTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
