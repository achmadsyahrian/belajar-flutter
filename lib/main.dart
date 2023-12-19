import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Switch"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              activeColor: Color.fromARGB(255, 81, 79, 224),
              activeThumbImage: AssetImage('images/mypict.jpg'),
              inactiveThumbImage: AssetImage('images/flower.jpg'),
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                (!statusSwitch) ? "Switch Off" : "Switch On", 
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}