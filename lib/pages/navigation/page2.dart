import 'package:first_project/pages/navigation/page1.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Page 2"),
      body: Center(
        child: Text("THIS PAGE TWO", style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => PageOne(),
            )
          );
        },
        backgroundColor: Color.fromARGB(221, 81, 79, 224),
        foregroundColor: Colors.white,
        hoverColor: Color.fromARGB(221, 67, 64, 240),
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}