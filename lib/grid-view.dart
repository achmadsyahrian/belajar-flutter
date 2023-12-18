import 'dart:math';

import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(99, (index) {
    return Container(
      // height: 500,
      // width: 1500,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
    );
  });
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar("Grid View"),
        body: 
        // GridView(
        //   padding: EdgeInsets.all(10),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 10,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3/3,
        //   ),
        //   children: myList,
        // ),
        GridView.count( //tidak perlu memakai gridDelegate
          padding: EdgeInsets.all(12),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // childAspectRatio: 3/4,
          children: myList,
        )
      ),
    );
  }
}