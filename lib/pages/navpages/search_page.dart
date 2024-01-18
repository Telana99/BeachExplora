import 'package:flutter/material.dart';
import 'package:ourproject/pages/navpages/detail_page.dart';
import 'package:ourproject/pages/widgets/app_text2.dart';
import 'package:ourproject/pages/widgets/bottom_navigation_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
            title: const Text("Search",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
            ),
            backgroundColor:Color.fromARGB(255, 101, 141, 211),
            shadowColor: const Color.fromARGB(255, 24, 24, 17),
            centerTitle: false,  
                       
        actions: [
          IconButton(onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          }, icon: const Icon(Icons.search), color: Colors.black,)
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
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Unawatuna',
    'Thalpe',
    'Koggala',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  IconButton buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var beach in searchTerms) {
      if (beach.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(beach);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var beach in searchTerms) {
      if (beach.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(beach);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
