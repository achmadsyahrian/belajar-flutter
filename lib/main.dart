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
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: appBar("Text Field"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: true,
              autofocus: true,
              maxLength: 20,
              enableSuggestions: true,
              // enableInteractiveSelection: false,
              enabled: true,
              // obscureText: true, //password
              // obscuringCharacter: "*", //custom password
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
              textAlign: TextAlign.right,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}