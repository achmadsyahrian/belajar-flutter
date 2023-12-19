import 'package:first_project/pages/route/gallery_page.dart';
import 'package:first_project/pages/route/home_page.dart';
import 'package:first_project/pages/route/photo_page.dart';
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
      darkTheme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        GalleryPage.routeName: (context) => GalleryPage(),
        PhotoPage.routeName: (context) => PhotoPage(),
      },
    );
  }
}


