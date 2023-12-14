import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          // centerTitle: true,
          leading: Container(
            color: Colors.black38,
          ),
          leadingWidth: 50,
          title: Container(
            // width: 50,
            height: 35,
            color: Colors.green,
          ),
          // titleSpacing: 40,
          actions: [
            Container(
              width: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 70,
              color:Color.fromARGB(255, 59, 232, 255),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200), // menambah hight appbar (Wajib)
            child: Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
          ),
          flexibleSpace: Container(
            height: 50,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}