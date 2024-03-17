import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({super.key, required this.backgroundLogin, required this.width, required this.height});
  final Color backgroundLogin;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
          decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundLogin,
      )),
    );
  }
}
