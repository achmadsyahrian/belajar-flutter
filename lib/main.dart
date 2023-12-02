import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<Map<String,dynamic>> myList = [
    {
      "Name" : "Achmad",
      "Age" : 17,
      "favColor" : ["Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue"],
    },
    {
      "Name" : "Syahrian",
      "Age" : 21,
      "favColor" : ["Grey", "Green", "Amber"],
    },
    {
      "Name" : "Achmad",
      "Age" : 17,
      "favColor" : ["Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue"],
    },
    {
      "Name" : "Achmad",
      "Age" : 17,
      "favColor" : ["Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue"],
    },
    {
      "Name" : "Achmad",
      "Age" : 17,
      "favColor" : ["Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue"],
    },
    {
      "Name" : "Achmad",
      "Age" : 17,
      "favColor" : ["Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue", "Black", "Red", "Blue"],
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 240, 240, 243),
        appBar: AppBar (
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          title: Center(
            child: Text(
              "ID Apps",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(20),
              color: Color.fromARGB(221, 81, 79, 224),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/mypict.jpg"),
                          maxRadius: 30,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultTextStyle(
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromARGB(234, 240, 240, 243),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name : ${data['Name']}"),
                                  Text("Age : ${data['Age']}"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavColor.map((color) {
                          return Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(234, 240, 240, 243),     borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                    // Fav Color
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}