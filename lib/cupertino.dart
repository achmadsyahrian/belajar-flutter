import 'package:first_project/partials/appbar.dart';
import 'package:flutter/cupertino.dart'; //https://docs.flutter.dev/ui/widgets/cupertino
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

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Cupertino"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return CupertinoAlertDialog(
                title: Text("Delete Item"),
                content: Text("Google uses cookies to deliver its services, to personalize ads, and to analyze traffic. You can adjust your privacy controls anytime in your Google settings. Learn more."),
                actions: [
                  TextButton(onPressed: () {}, child: Text("No")),
                  TextButton(onPressed: () {}, child: Text("Yes")),
                ],
              );
            });
          },
          child: Text("Alert Dialog"),  
        )
      ),
    );
  }
}

