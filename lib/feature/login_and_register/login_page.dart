import 'package:flutter/material.dart';
import 'package:stockapp/constant/image_constant.dart';
import 'package:stockapp/feature/for_got_password_page.dart';
import 'package:stockapp/feature/home/home_page.dart';

import 'register_page.dart';
import 'widget/input_text_field.dart';
import 'widget/login_input.dart';
import 'widget/pwd_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isEye = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstant.soutsakaLogo,
                        width: 100,
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputTextfield(
                    iconText: Icon(Icons.email),
                    textInput: 'Email Adress',
                  ),
                  const SizedBox(
                    height: 20,
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
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword())),
                          child: const Text(
                            "For got Password ?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _isLoading ?const CircularProgressIndicator( )
                  : LoginInput(
                    tileButton: 'Login',
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
                            builder: (context) => const HomePage(),
                          ),
                        );
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have An Account ?",
                          style: TextStyle(fontSize: 16)),
                      InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage())),
                          child: const Text("Sing Up Now",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ],
                  ),
                  Image.asset(
                    ImageConstant.student,
                    width: 500,
                    height: 300,
                  ),
                  // Text(
                  //   "ສະບາຍດີ",
                  //   style: GoogleFonts.notoSansLao(fontSize: 24.0),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
