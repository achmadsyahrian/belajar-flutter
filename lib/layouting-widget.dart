import 'package:flutter/material.dart';

main() {
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
          title: Text(
            'Column',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins'
              ),
          ),
        ),
        //untuk mengatur row/column adalah kebalikan dari bootstrap (Row Horizontal -> Column Vertikal)
        // Row
        // Column
        // Stack -> Berurut Kedepan
        body: Stack( 
          // mainAxisAlignment: MainAxisAlignment.end, 
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 300,
              color: Colors.green,
            ),
            Container(
              height: 250,
              width: 150,
              color: Color.fromARGB(255, 240, 70, 19),
            ),
            Container(
              height: 300,
              width: 120,
              color: Color.fromARGB(255, 207, 240, 19),
            ),
            Container(
              height: 150,
              width: 50,
              color: Color.fromARGB(255, 19, 240, 185),
            ),
          ],
        ),
      ),
    );
  }
}