import 'package:first_project/pages/route/photo_page.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/gallery';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Gallery"),
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