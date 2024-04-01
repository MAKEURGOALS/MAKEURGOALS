import 'package:flutter/material.dart';
import 'package:stockapp/feature/login_and_register/widget/login_input.dart';
import 'package:stockapp/feature/reset_pasword.dart';

import 'login_and_register/widget/input_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:  Column(
          children: [
            const InputTextfield(
              iconText: Icon(Icons.email),
              textInput: 'Your Email Adress',
            ),
            const SizedBox(
              height: 30,
            ),
            LoginInput(tileButton: 'Send',onTap: () =>Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPassword())),
            )
          ],
        ),
      ),
    );
  }
}
