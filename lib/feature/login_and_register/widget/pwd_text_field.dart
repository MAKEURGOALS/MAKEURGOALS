import 'package:flutter/material.dart';

class PassWordTextField extends StatelessWidget {
  const PassWordTextField(
      {super.key,
      required this.textLabel,
      required this.icons,
      this.onPressed,
      required this.obscurText});
  final String textLabel;
  final Icon icons;
  final void Function()? onPressed;
  final bool obscurText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: textLabel,
          suffixIcon: IconButton(onPressed: onPressed, icon: icons)
          ),
      obscureText: obscurText,
    );
  }
}
