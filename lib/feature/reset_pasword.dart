import 'package:flutter/material.dart';
import 'package:stockapp/feature/login_and_register/login_page.dart';
import 'login_and_register/widget/login_input.dart';
import 'login_and_register/widget/pwd_text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isEye = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'OTP',
              ),
            ),
            PassWordTextField(
              textLabel: 'Password',
              icons: Icon(_isEye ? Icons.visibility_off : Icons.visibility),
              obscurText: _isEye,
              onPressed: () {
                setState(() {
                  _isEye = !_isEye;
                });
              },
            ),
            PassWordTextField(
              textLabel: 'Confirm Password',
              icons: Icon(_isEye ? Icons.visibility_off : Icons.visibility),
              obscurText: _isEye,
              onPressed: () {
                setState(() {
                  _isEye = !_isEye;
                });
              },
            ),
            _isLoading
                ? const  CircularProgressIndicator() // Show CircularProgressIndicator when loading
                : LoginInput(
                    tileButton: 'Reset Password',
                    onTap: () {
                      setState(() {
                        _isLoading = true; // Set loading state to true
                      });
                      // Simulate a delay for 3 seconds
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          _isLoading = false; // Set loading state to false after 3 seconds
                        });
                        // Navigate to LoginPage after resetting password
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      });
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
