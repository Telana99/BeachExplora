import 'package:flutter/material.dart';
import 'package:ourproject/pages/navpages/detail_page.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class MannarBeaches extends StatefulWidget {
  const MannarBeaches({Key? key}) : super(key: key);

  @override
  State<MannarBeaches> createState() => _MannarBeachesState();
}

class _MannarBeachesState extends State<MannarBeaches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
            title: const Text("Mannar",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            ),
            backgroundColor:Color.fromARGB(255, 101, 141, 211),
            shadowColor: const Color.fromARGB(255, 24, 24, 17),
            centerTitle: false,  
                       
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu), color: Colors.black,)
        ],
        ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, top: 5),
                              child: Image.asset(
                                "assets/welcome_one.jpg",
                                height: 160,
                                width: 160,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: AppText2(text: "hellooo"),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 30, top: 5),
                            child: Image.asset(
                              "assets/welcome_one.jpg",
                              height: 160,
                              width: 160,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: AppText2(text: "hellooo"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
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
