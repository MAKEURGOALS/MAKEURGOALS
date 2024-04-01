import 'package:flutter/material.dart';

import 'login_and_register/widget/login_input.dart';
import 'login_and_register/widget/pwd_text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isEye = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:  Column(
          children: [
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'OTP',
              ),
            ),
            PassWordTextField(
              textLabel: 'Password',
                    icons:
                        Icon(_isEye ? Icons.visibility_off : Icons.visibility),
                    obscurText: _isEye,
                    onPressed: () {
                      setState(() {
                        _isEye = !_isEye;
                      });
                    },
            ),
            PassWordTextField(
              textLabel: 'Confirm Password',
                    icons:
                        Icon(_isEye ? Icons.visibility_off : Icons.visibility),
                    obscurText: _isEye,
                    onPressed: () {
                      setState(() {
                        _isEye = !_isEye;
                      });
                    },
            ),
            LoginInput(tileButton: 'Reset PassWord',onTap: () =>Navigator.push(
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
