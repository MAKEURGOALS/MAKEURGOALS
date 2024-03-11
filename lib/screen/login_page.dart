import 'package:flutter/material.dart';

import '../widget/input_text_field.dart';
import '../widget/login_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                InputTextfield(
                  iconText: Icon(Icons.email),
                  textInput: 'Email Adress',
                ),
                SizedBox(
                  height: 20,
                ),
                InputTextfield(
                  iconText: Icon(Icons.password),
                  textInput: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),
                LoginInput()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
