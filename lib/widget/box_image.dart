import 'package:flutter/material.dart';
// import 'package:stockapp/constant/color_constant.dart';
// import 'package:stockapp/constant/image_constant.dart';

class BoxImages extends StatelessWidget {
  const BoxImages({super.key, required this.boxImage, required this.textBox, required this.textBox2});
  final String boxImage;
  final String textBox;
  final String textBox2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          // color: ColorConstant.backgroundStock,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              boxImage,
              width: 70,
            ),
          ),
          const SizedBox(width: 10,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textBox,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               
              ),
              Text(textBox2,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
