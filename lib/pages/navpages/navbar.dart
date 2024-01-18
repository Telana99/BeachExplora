import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Align(
          alignment: Alignment(0, -0.9),
          child: Container(
            width: 130,
            height: 110,
            color: Color.fromARGB(255, 93, 144, 186),
          ),
        ),
        Expanded(
          child: Container(
            width: 140,
            color: const Color.fromARGB(255, 93, 144, 186),
          ),
        ),
      ],
    );
  }
}
