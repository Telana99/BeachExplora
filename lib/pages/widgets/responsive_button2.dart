import 'package:flutter/material.dart';
import 'package:ourproject/pages/navpages/district_page.dart';


class ResponsiveButton2 extends StatelessWidget {
  //to change the size we use bool responsive
  bool isResponsive;
  double? width;

  ResponsiveButton2({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DistrictPage(),
      ),
    );
  },
  child: Image.asset(
    "assets/go2.jpg",
    
  ),
),
        ],)

    );
  }
}