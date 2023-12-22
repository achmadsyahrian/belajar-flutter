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
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Flexible & Expanded"),
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              height: 100,
              child: Text("Text 1 aisdgiaudsygjahsdgkasdadsadsads"),
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            child: Text("Text 1"),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Text 1"),
            ),
          ),
        ],
      ),
    );
  }
}



