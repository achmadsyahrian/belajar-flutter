import 'package:first_project/pages/route/gallery_page.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const routeName = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Photo"),
      body: Center(
        child: Text("Photo Page",
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'Poppins'
        ),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_arrow_left),
        backgroundColor: Color.fromARGB(221, 81, 79, 224),
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}