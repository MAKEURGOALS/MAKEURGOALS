import 'package:flutter/material.dart';

import '../constant/color_constant.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon:const Icon(Icons.search, size: 40,),
          hintText: 'Enter your ',
          fillColor: ColorConstant.backgroundStock,
          filled: true
        ),
      ),
    );
  }
}