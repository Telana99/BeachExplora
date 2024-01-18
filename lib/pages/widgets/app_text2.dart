import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppText2 extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   AppText2({Key? key, 
    this.size =20,
    
    required this.text,
    this.color = Colors.black}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
       
      ),

    );
  }
}