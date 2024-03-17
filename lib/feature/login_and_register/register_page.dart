import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stockapp/feature/login_and_register/login_page.dart';

import '../../constant/image_constant.dart';
import 'widget/input_text_field.dart';
import 'widget/login_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      ).animate().animate().fade().scaleY()
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
                  const InputTextfield(
                    iconText: Icon(Icons.password),
                    textInput: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputTextfield(
                    iconText: Icon(Icons.password),
                    textInput: 'Confirm Password',
                  ),
                  const SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "For got Password ?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LoginInput(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already Have An Account ?",
                          style: TextStyle(fontSize: 16)),
                      InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage())),
                          child: const Text("Login Now",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                    ],
                  ),
                 const  SizedBox(height: 10,),
                  Image.asset(
                    ImageConstant.student,
                    width: 400,
                    height: 200,
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