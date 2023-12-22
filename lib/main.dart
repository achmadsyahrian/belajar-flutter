import 'dart:math';

import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp //untuk memilih rotate aplikasi yg bisa dilakukan
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.sizeOf(context).height; 
    final mediaQueryWidth = MediaQuery.sizeOf(context).width; 
    final myAppBar = appBar("Media Query");
    final bodyHeight = mediaQueryHeight - myAppBar.preferredSize.height - MediaQuery.paddingOf(context).top;

    final bool isLandscape = MediaQuery.orientationOf(context) == Orientation.landscape;
    
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape) 
          ? Column(
            children: [
              Container(
                width: mediaQueryWidth,
                height: bodyHeight * 0.5,
                color: Colors.amber,
              ),
              Container(
                height: mediaQueryHeight * 0.4,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 60,
                  itemBuilder: (context, index) {
                    return GridTile(child: Container(color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256))));  
                  },
                ),
              ),
            ],
          ) 
        : Column(
          children: [
            Container(
              width: mediaQueryWidth,
              height: bodyHeight * 0.3,
              color: Colors.amber,
            ),
            Container(
              height: mediaQueryHeight * 0.6,
              child: ListView.builder(
                itemCount: 60,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Achmad"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                  );  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


