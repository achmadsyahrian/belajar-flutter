import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          title: Center(
            child: Text(
              "Date Time",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMMd('en_US').format(DateTime.now()), //https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html
              style: TextStyle(
                fontSize: 25
              ),
            ),
        ),
      ),
    );
  }
}