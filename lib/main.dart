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
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity(horizontal: 4, vertical: 1), //max 4 (ukuran)
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.red,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 98, 89, 231),
            fontFamily: 'Cabin'
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            
          ),
        )
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("THEME")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a text",
              style: TextStyle(
                fontSize: 25
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "This is a text",
              style: TextStyle(
                fontSize: 35
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {}, 
              child: Text("Button",
                style: TextStyle(fontSize: 25),
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.theater_comedy_outlined),
      ),
    );
  }
}

