import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar("Fitted Box"),
        body: Center(
          child: Row(
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: FittedBox(
                    child: Text("Hello Duniaasdadsadsadsadsadsasdadasd"),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                color: const Color.fromARGB(255, 54, 244, 95),
                child: Center(
                  child: FittedBox(
                    // alignment: Alignment.topRight,
                    fit: BoxFit.fill,
                    child: Image.asset('images/flower.jpg'), 
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}