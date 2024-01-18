import 'package:flutter/material.dart';
import 'package:ourproject/pages/districts/ampara_beaches.dart';
import 'package:ourproject/pages/districts/batticaloa_beaches.dart';
import 'package:ourproject/pages/districts/colombo_beaches.dart';
import 'package:ourproject/pages/districts/galle_beaches.dart';
import 'package:ourproject/pages/districts/gampaha_beaches.dart';
import 'package:ourproject/pages/districts/hambanthota_beaches.dart';
import 'package:ourproject/pages/districts/jaffan_beaches.dart';
import 'package:ourproject/pages/districts/kaluthara_beaches.dart';
import 'package:ourproject/pages/districts/kilinochchi_beaches.dart';
import 'package:ourproject/pages/districts/mannar_beaches.dart';
import 'package:ourproject/pages/districts/matara_beaches.dart';
import 'package:ourproject/pages/districts/mulathiv_beachs.dart';
import 'package:ourproject/pages/districts/puttlam_beaches.dart';
import 'package:ourproject/pages/districts/trinco_beaches.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class DistrictPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Districts",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 122, 165, 240),
        shadowColor: const Color.fromARGB(255, 24, 24, 17),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu), color: Colors.black,)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: 1, // Set the number of rows
          itemBuilder: (BuildContext context, int index) {
            // Create two clickable containers per row
            return Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  SizedBox(height: 19.0),
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Ampara", AmparaBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Batticaloa", BatticaloaBeaches()),
                    ],
                    
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Colombo", ColomboBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Galle", GalleBeaches()),
                    ],
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Gampaha", GampahaBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Jaffna", JaffnaBeaches()),
                    ],
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Hambanthota", HambanthotaBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Kaluthara", KalutharaBeaches()),
                    ],
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Kilinochchi", KilinochchiBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Mannar", MannarBeaches()),
                    ],
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Matara", MataraBeaces()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Mulathiv", MulathivBeaches()),
                    ],
                  ),
                  SizedBox(height: 14.0),
            
                  Row(
                    children: [
                      SizedBox(height: 14.0),
                      buildClickableContainer(context, "Puttalam", PuttalamBeaches()),
                      SizedBox(width: 14.0),
                      buildClickableContainer(context, "Trinco", TricoBeaches()),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget buildContainer(String name) {
    return Container(
      width: 180.0,
      height: 55.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 199, 220, 245),
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: AppText2(text: name, color: Colors.black),
      ),
    );
  }

  Widget buildClickableContainer(
      BuildContext context, String name, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: buildContainer(name),
    );
  }
}
