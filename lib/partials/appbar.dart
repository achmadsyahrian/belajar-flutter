import 'package:flutter/material.dart';

AppBar appBar(text) {
    return AppBar(
        backgroundColor: Color.fromARGB(221, 81, 79, 224),
        centerTitle: true,
        leading: Container(),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 19,
          fontFamily: 'Poppins',
        ),
        title: Text(text),
      );
  }