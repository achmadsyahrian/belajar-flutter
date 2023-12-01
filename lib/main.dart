import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Color.fromARGB(255, 244, 130, 54),
    Color.fromARGB(255, 54, 200, 244),
    Color.fromARGB(255, 244, 54, 54),
    Color.fromARGB(255, 138, 79, 40),
  ];

  final List<Widget> myList = List.generate(100, 
    (index) => Text(
      "${index+1}",
      style: TextStyle(
        fontSize: 20 + double.parse(index.toString()),
        fontFamily: 'Poppins'
      ),
    ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 240, 240, 243),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          title: Center(
            child: Text(
              "List View",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins'
              ),
            ),
          )
        ),
        // body: ListView.builder(
        //   itemCount: myColor.length, //Buat 4 List
        //   itemBuilder: (context, index) {
        //     return Container(
        //       width: 300,
        //       height: 300,
        //       color: myColor[index], //index dari function itemBuilder jadi seakan dilooping otomatis
        //     );
        //   },
        // ),
        // body: ListView.separated( //ListView.separated bisa memberikan jarak antar komponen menggunakan separatedBuilder
        //   separatorBuilder: (context, index) {
        //     // return Container(
        //     //   height: 10,
        //     //   color: Color.fromARGB(221, 81, 79, 224),
        //     // );
        //     return Divider(
        //       color: Color.fromARGB(221, 81, 79, 224),
        //     );
        //   },
        //   itemCount: myColor.length, //Buat 4 List
        //   itemBuilder: (context, index) {
        //     // return Container(
        //     //   width: 300,
        //     //   height: 300,
        //     //   color: myColor[index], //index dari function itemBuilder jadi seakan dilooping otomatis
        //     // );
        //     return myList;
        //   },
        // ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}