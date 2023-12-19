import 'package:first_project/navigations/page2.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Page 1"),
      body: Center(
        child: Text("THIS PAGE ONE", style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => PageTwo(),
            )
          );
        },
        backgroundColor: Color.fromRGBO(81, 79, 224, 0.867),
        foregroundColor: Colors.white,
        hoverColor: Color.fromARGB(221, 67, 64, 240),
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}