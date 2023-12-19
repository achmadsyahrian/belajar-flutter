import 'package:first_project/pages/route/gallery_page.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Route"),
      body: Center(
        child: Text("Home Page",
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'Poppins'
        ),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, GalleryPage.routeName);
        },
        child: Icon(Icons.keyboard_arrow_right),
        backgroundColor: Color.fromARGB(221, 81, 79, 224),
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}