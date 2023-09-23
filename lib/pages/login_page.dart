import 'package:flutter/material.dart';
import 'package:registration_firebase/widgets/background.dart';
import 'package:registration_firebase/widgets/my_button.dart';
import 'package:registration_firebase/widgets/sign_up_button.dart';
import 'package:registration_firebase/widgets/social_button.dart';
import 'package:registration_firebase/widgets/text_field_widget.dart';

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
              MyButton(
                text: 'Login',
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SocialButton(
                  iconPath: 'assets/images/google.png',
                  label: 'Continue with Google',
                  horizontalPadding: 35,
                  verticalpadding: 15,
                ),
              ),
              SignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}
