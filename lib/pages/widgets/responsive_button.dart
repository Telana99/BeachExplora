import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  //to change the size we use bool responsive
  bool isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/buttton_two.jpg"),
        ],)

    );
  }
}