import 'package:flutter/material.dart';
import 'package:ourproject/pages/widgets/app_large_text.dart';
import 'package:ourproject/pages/widgets/app_text.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
            title: const Text("BeachApp",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            backgroundColor:Color.fromARGB(255, 107, 148, 219),
            shadowColor: const Color.fromARGB(255, 24, 24, 17),
            centerTitle: false,  
                       
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ],
        ),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: 550,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/welcome_one.jpg"),
                    fit: BoxFit.cover,
                    ),
                    
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5,top: 200),
              child: Positioned(
                top: 230,
                
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: 400,
                  height: 550,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 230, 237, 241),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 1000,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppLargeText(text: "ABC", color:Color.fromARGB(255, 24, 13, 106)),
                              AppText2(text: "DICTRICT", color: Color.fromARGB(255, 24, 13, 106))
                            ],
                          ),
                          const SizedBox(height: 18,),
                          Row(
                            children: [
                              const Icon(Icons.location_on, color: Color.fromARGB(255, 47, 108, 187)),
                              AppText2(text: " Location",color: Colors.blue,),
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 30),
                                child: AppText(text: "link should be added here",size: 18,)),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              const Icon(Icons.info_rounded, color: Color.fromARGB(255, 47, 108, 187)),
                              AppText2(text: " Discription : ",color: Colors.blue,),
                              
                            ],
                            ),
                            const SizedBox(height: 20,),
                          SizedBox(
                            width: 380,
                            child: Container(
                              padding: EdgeInsets.only(left: 29),
                              child: AppText(
                                text:
                                    "Welcome to Beach Explora, your gateway to discovering the pristine beauty of Sri Lanka's coastal wonders. Immerse yourself in a world of sun-kissed shores, azure waters, and hidden gems along the Sri Lankan coastline. Explore breathtaking beaches, plan your next seaside adventure, and experience the serenity of nature's coastal marvels with Beach Explora mobile app.Welcome to Beach Explora, your gateway to discovering the pristine beauty of Sri Lanka's coastal wonders. Immerse yourself in a world of sun-kissed shores, azure waters, and hidden gems along the Sri Lankan coastline. Explore breathtaking .",
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: MyBottomNavigationBar(),
            ),
          ], // Remove the extra comma here
        ),
      ),
    );
  }
}