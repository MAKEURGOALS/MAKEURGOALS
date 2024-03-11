import 'package:flutter/material.dart';

class ButtonOut extends StatelessWidget {
  const ButtonOut({super.key, required this.selectedColor});
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
         
       },
        child: Container(
          width: 180,
          height: 65,
          decoration: BoxDecoration(
              color: selectedColor,
              borderRadius: BorderRadius.circular(5)),
          child: const Center(
              child: Text('ນຳອອກ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white))),
        ));
  }
}
