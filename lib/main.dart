// ignore: file_names
import 'package:flutter/material.dart';

import 'package:ourproject/pages/widgets/app_large_text.dart';
import 'package:ourproject/pages/widgets/app_text.dart';
import 'package:ourproject/pages/widgets/responsive_Button2.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});


  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "New app",
      home: Scaffold(
      
        
        
        appBar: AppBar(
          
            title: const Text("BeachApp",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            backgroundColor:const Color.fromARGB(255, 28, 68, 132),
            shadowColor: const Color.fromARGB(255, 24, 24, 17),
            centerTitle: false,  
                       
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ],
        ),

         body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/background2.jpg'),
              fit: BoxFit.cover,
              
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
              BlendMode.dstATop),
            ),

          ),
          child: Container(
              margin: const EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Beach Explora"),//,color:Colors.blueGrey)
                      AppText(text: "In Sri Lanka", size: 25, ),
                      const SizedBox(height: 5),
                      Container(
                        width: 250,
                        child: AppText(
                          text:"Welcome to Beach Explora, your gateway to Sri Lanka's coastal beauty.", 
                          color: const Color.fromARGB(255, 6, 0, 0) , 
                          size: 20, 
                          ),
                      ),
                      const SizedBox(height: 300),
                       ResponsiveButton2(
                        width: 120,)
                    ],
                  ),
                ],
              ), 
            ), 
         ),
       ), 
    );
  }
}