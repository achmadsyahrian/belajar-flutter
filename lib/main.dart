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
        backgroundColor: Color.fromARGB(234, 238, 239, 241),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 9, 60, 226),
          title: Text("My Apps"),
        ),
        body: Center(
          child: Text("Halo"),
        ),
      ),
    );
  }
}