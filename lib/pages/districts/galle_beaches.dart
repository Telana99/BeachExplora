import 'package:flutter/material.dart';
import 'package:ourproject/pages/dstrictbeaches/galle/junglebeach.dart';
import 'package:ourproject/pages/navpages/detail_page.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class GalleBeaches extends StatefulWidget {
  const GalleBeaches({Key? key}) : super(key: key);

  @override
  State<GalleBeaches> createState() => _GalleBeachesState();
}

class _GalleBeachesState extends State<GalleBeaches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
            title: const Text("Galle",
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
                                  builder: (context) => JungleBeach()),
                                
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, top: 5),
                              child: Image.asset(
                                "assets/welcome_two.jpg",
                                height: 160,
                                width: 160,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: AppText2(text: "JungleBeach"),
                          ),
                        ],
                      ),
                      SizedBox(width: 15.0),
                      /*Column(
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
                      ),*/
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
