import 'dart:html';

import 'package:first_project/partials/appbar.dart';
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
        backgroundColor: Color.fromARGB(234, 240, 240, 243),
        appBar: appBar("My Apps"),
        body: Center(
          child: Text(
            "Jangan saya kan mencari hewan kalau tidak orang kepada orang tidak mau jika saya memanggil disebut akan jalan menuju langka pernah bangun kepada tidak akan memberikan sesuatu paling tidak akan mengunjungi rumah bila tetapi membuat jalan akan waktu tidak bisa orang orang akan memanggil nama dengan sebutan siapa kan ada.",
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(221, 0, 0, 0),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              // decoration: TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.solid,
              // decorationColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}