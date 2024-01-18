import 'package:flutter/material.dart';
import 'package:ourproject/pages/navpages/navbar.dart';
import 'package:ourproject/pages/widgets/app_large_text.dart';
import 'package:ourproject/pages/widgets/app_text.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
                "AboutApp",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
  ),
  backgroundColor: Color.fromARGB(255, 73, 135, 234),
  shadowColor: const Color.fromARGB(255, 24, 24, 17),
  centerTitle: false,
  actions: [
    IconButton(
      onPressed: () {
        // Navigate to NavBarPage
        //Navigator.push(
        //context,
          //MaterialPageRoute(builder: (context) => NavBar()),
      //);
      },
      icon: const Icon(Icons.menu),
      color: Colors.black,
    ),
  ],
),

      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: const Color.fromARGB(255, 8, 76, 133),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15,top: 11),
            child: Positioned(
              top: 10,
              left: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 30),
                width: 380,
                height: 525,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 237, 241),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                            children: [
                              const Icon(Icons.handshake_outlined, color: Color.fromARGB(255, 51, 104, 228)),
                              AppLargeText(text: " Welcome to BeachApp",color: const Color.fromARGB(255, 51, 104, 228),),
                            ],
                            ),
                                                       
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 380,
                      child: Container(
                        padding: const EdgeInsets.only(left: 5),
                        
                        child: AppText(
                          text:
                              "   Embark on a sun-soaked journey along Sri Lanka's spectacular coastline with the Beach-App. Designed for both seasoned beach lovers and first-time visitors. Tthis app is a comprehensive guide to the country's diverse and stunning beaches. Discover hidden gems, plan your seaside escapades with real-time updates on weather and tides with our user-friendly interface.Join the Beach App community, where every wave carries the promise of a memorable coastal adventure",
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 23),
                      child: Row(
                        children: [
                           Image.asset(
                                  "assets/welcome_one.jpg",
                                  height: 100,
                                  width: 100,
                                ),
                                Image.asset(
                                  "assets/welcome_one.jpg",
                                  height: 100,
                                  width: 100,
                                ),
                                Image.asset(
                                  "assets/welcome_one.jpg",
                                  height: 100,
                                  width: 100,
                                ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: MyBottomNavigationBar(),
            ),
        ],
      ),
    );
  }
}
