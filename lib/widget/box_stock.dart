import 'package:flutter/material.dart';

import '../constant/color_constant.dart';

class Boxstock extends StatelessWidget {
  const Boxstock({super.key, required this.iconBoxStock, });
  final String iconBoxStock;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstant.backgroundStock,
      ),
      width: 170,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              iconBoxStock,
              width: 60,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Stock',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "10",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
