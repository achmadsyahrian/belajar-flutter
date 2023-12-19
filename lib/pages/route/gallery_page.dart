import 'package:first_project/pages/route/home_page.dart';
import 'package:first_project/pages/route/photo_page.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/gallery';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Gallery"),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 81, 79, 224),
        width: 250,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Color.fromARGB(255, 41, 37, 235),
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text("My Menu", 
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Poppins'
                ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Gallery Page",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(Icons.keyboard_arrow_left),
                  backgroundColor: Color.fromARGB(221, 81, 79, 224),
                  foregroundColor: Colors.white,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PhotoPage.routeName);
                  }, 
                  backgroundColor: Color.fromARGB(221, 81, 79, 224),
                  foregroundColor: Colors.white,
                  child: Icon(Icons.keyboard_arrow_right)
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}