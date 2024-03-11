import 'package:flutter/material.dart';

class InputTextfield extends StatelessWidget {
  const InputTextfield({super.key, required this.iconText, required this.textInput});
  final Icon iconText;
  final String textInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
          labelText: textInput, 
          suffixIcon:iconText,
    )
    );
  }
}
