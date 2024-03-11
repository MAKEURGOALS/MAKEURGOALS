import 'package:flutter/material.dart';
import 'package:stockapp/constant/color_constant.dart';
import 'package:stockapp/constant/icons_constant.dart';
import 'package:stockapp/constant/image_constant.dart';

import '../widget/box_image.dart';
import '../widget/box_stock.dart';
import '../widget/input_field.dart';
import '../widget/plus_minus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stock App',
          style: TextStyle(
              color: ColorConstant.primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
                iconSize: 40,
              ),
              Positioned(
                  top: 0,
                  right: 2,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: ColorConstant.primaryColor, shape: BoxShape.circle),
                    child: const Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
                    ),
                  ))
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
              iconSize: 40)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Text Field
              Row(
                children: [
                  const InputField(),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        size: 45,
                      ))
                ],
              ),
        
              //Stock Box
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Boxstock(
                    iconBoxStock: IconsStockConstanat.checkBox,
                  ),
                  Boxstock(
                    iconBoxStock: IconsStockConstanat.cancelBox,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              //Pherm Box Image
              BoxImages(
                boxImage: ImageConstant.sugar,
                textBox: 'Sugar',
                textBox2: 'Stock : 10 KG',
              ),
              BoxImages(
                boxImage: ImageConstant.beer,
                textBox: 'Beer',
                textBox2: 'Stock : 1 Pack',
              ),   
        
              const SizedBox(
                height: 250,
              ),
        
              const PlusAndMinus()
            ],
          ),
        ),
      ),
    );
  }
}
