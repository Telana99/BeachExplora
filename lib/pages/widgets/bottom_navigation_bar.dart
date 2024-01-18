import 'package:flutter/material.dart';
import 'package:ourproject/pages/navpages/about_page.dart';
import 'package:ourproject/pages/navpages/district_page.dart';
import 'package:ourproject/pages/navpages/search_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> tabs = [
    DistrictPage(),
    SearchPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 122, 165, 240),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search, color: Colors.black),
          ),
          BottomNavigationBarItem(
            label: 'About',
            icon: Icon(Icons.info, color: Colors.black),
          ),
        ],
        onTap: (index) {
          // Navigate to corresponding pages based on the index
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DistrictPage(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
