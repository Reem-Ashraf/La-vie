import 'package:flutter/material.dart';
import 'package:lavie/splach_acreen.dart';

void main() {
  runApp(MyApp());
}
class  MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return object mn elno3 widget el material app elly feha kol el app
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      //that take an input object
      home:SplacchScreen(),
    );


  }



}
