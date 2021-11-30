// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_usage/views/home_screen/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 50),
          Column(mainAxisSize: MainAxisSize.max, children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.05,
              child: Obx(()=>Text(
                "${controller.num1}",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 24),
              ),),
            ),
            Divider(
              height: 5,
              indent: 10,
              endIndent: 10,
              color: Colors.red,
              thickness: 1.1,
            ),
            SizedBox(height:60),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 75, width: 75, child: calculatorButton("1", controller.getOne(1))),
                SizedBox(height: 75, width: 75, child: calculatorButton("2", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("3", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("+", (){})),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 75, width: 75, child: calculatorButton("4", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("5", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("6", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("-", (){})),
              ],
            ),
            SizedBox(height: 20,),
             Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 75, width: 75, child: calculatorButton("7", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("8", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("9", (){})),
                SizedBox(height: 75, width: 75, child: calculatorButton("*", (){})),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 75, width: 75,),
                SizedBox(height: 75, width: 75, child: calculatorButton("0", (){})),
                SizedBox(height: 75, width: 75),
                SizedBox(height: 75, width: 75, child: calculatorButton("/", (){})),
              ],
              
            ),
            SizedBox(height: 20,),
            calculatorButton("Calculate", (){})
          ]),
        ],
      ),
    );
  }

  ElevatedButton calculatorButton(String data, void  function) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shadowColor: MaterialStateProperty.all<Color>(Colors.green),
          elevation: MaterialStateProperty.all<double>(10.0),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed:()=> function,
        child: Text(data, style: TextStyle(fontSize: 24),));
  }
}
