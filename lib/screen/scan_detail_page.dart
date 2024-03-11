import 'package:flutter/material.dart';
import 'package:stockapp/constant/image_constant.dart';

import '../widget/button.dart';
import '../widget/plus_minus.dart';

class ScanDetailPage extends StatelessWidget {
  const ScanDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan Details")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 490,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 234, 241).withOpacity(0.7)
      
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Image.asset(ImageConstant.beer,width: 120,),
                Image.asset(ImageConstant.beer,width: 120,),

                  ],
                ),

                const SizedBox(height: 20,),
                const Text('Beer',style: TextStyle(fontSize:30, fontWeight:FontWeight.bold)),
                const SizedBox(height: 10,),
          
                const Text('beer'),
                const SizedBox(height: 30,),
          
                const PlusAndMinus(),
                const SizedBox(height: 30,),
                
                const ButtonOut()
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
