import 'package:bmi_calculator/homePage.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(bmi_calculate());

}

class bmi_calculate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmihome(),
    );

  }



}