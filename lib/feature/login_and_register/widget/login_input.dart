import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  const LoginInput({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  const HSLColor.fromAHSL(1, 217, 1.0, 0.5).toColor(),
                  const HSLColor.fromAHSL(1, 186, 1.0, 0.69).toColor(),
                ],
              ),borderRadius: BorderRadius.circular(10)
      ),
      child:  InkWell(
        onTap: onTap,
        child: const Center(
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
