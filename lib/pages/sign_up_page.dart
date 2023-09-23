import 'package:flutter/material.dart';
import 'package:registration_firebase/widgets/background.dart';
import 'package:registration_firebase/widgets/my_button.dart';
import 'package:registration_firebase/widgets/text_field_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                "WELCOME!",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFieldWidget(
                  labeltext: "Email",
                  controller: emailController,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFieldWidget(
                  labeltext: "Password",
                  controller: passwordController,
                  obscureText: true,
                  isPassword: true,
                ),
              ),
              MyButton(text: "Create New Account")
            ],
          ),
        ),
      ),
    );
  }
}
