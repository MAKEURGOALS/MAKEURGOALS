import 'package:flutter/material.dart';

import '../constant/color_constant.dart';

class PlusAndMinus extends StatefulWidget {
  const PlusAndMinus({super.key});

  @override
  State<PlusAndMinus> createState() => _PlusAndMinusState();
}

class _PlusAndMinusState extends State<PlusAndMinus> {
  int count = 0;
  void plus() {
    setState(() {
      count++;
    });
  }

  void minus() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 206, 222),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const SizedBox(width: 50,),       

          Text(count.toString() , style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
           const SizedBox(width: 60,),       

          Container(
            width: 80,
              decoration: BoxDecoration(
                  color: ColorConstant.primaryColor, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  icon: const Icon(Icons.add,color: Colors.white,), onPressed: () => plus())),
           const SizedBox(width: 20,),       
          Container(
            width: 80,
              decoration: BoxDecoration(
                  color: ColorConstant.primaryColor, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  icon: const Icon(Icons.remove, color: Colors.white,), onPressed: () => minus())),
        ],
      ),
    );
  }
}
