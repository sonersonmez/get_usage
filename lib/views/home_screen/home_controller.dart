// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

import 'package:get/get.dart';

class CalculatorController extends GetxController{

  var num1=0.obs;
  var num2;
  var result=0.obs;
  

  void getOne(var num) async{
    print("tapped");
   
   if(num1==null){
     print("Değer: 0");
   }else{
  var num1=await num;
   }
  
  }

}