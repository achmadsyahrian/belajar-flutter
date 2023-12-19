import 'package:first_project/pages/route/gallery_page.dart';
import 'package:first_project/pages/route/home_page.dart';
import 'package:first_project/pages/route/photo_page.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        HomePage.routeName : (context) => HomePage(),
        GalleryPage.routeName : (context) => GalleryPage(),
        PhotoPage.routeName : (context) => PhotoPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Drawer"),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 81, 79, 224),
        width: 250,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              // color: Color.fromARGB(255, 41, 37, 235),
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.menu_book, size: 35, color: Colors.white,),
                  SizedBox(width: 7,),
                  Text("My Menu", 
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("Home", 
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushReplacementNamed(context, GalleryPage.routeName),
              leading: Icon(Icons.photo_library_rounded, color: Colors.white,),
              title: Text("Gallery", 
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pushReplacementNamed(context, PhotoPage.routeName),
              leading: Icon(Icons.photo_camera, color: Colors.white,),
              title: Text("Photo", 
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins'
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Hello Prof. Achmad", 
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins'
          ),
        ),
      ),
    );
  }
}