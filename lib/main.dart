import 'dart:html';

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
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          title: Text(
            "My Apps",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: 'Poppins'
            ),
          ),
        ),
        body: Center(
          child: Text(
            "jangan saya kan mencari hewan kalau tidak orang kepada orang tidak mau jika saya memanggil disebut akan jalan menuju langka pernah bangun kepada tidak akan memberikan sesuatu paling tidak akan mengunjungi rumah bila tetapi membuat jalan akan waktu tidak bisa orang orang akan memanggil nama dengan sebutan siapa kan ada dan dan tidak mau jika seseorang sesuatu memberikan hadiah terhadap seseorang bila hewan memanggil nama kan siapa siapa menjauh bila tidak bisa berada di samping sebuah ubah menjadi kategori disebut melakukan atas dasar bermain",
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