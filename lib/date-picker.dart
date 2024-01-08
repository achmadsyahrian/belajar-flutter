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
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Date Picker"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(selectDate.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            OutlinedButton(onPressed: () {
              showDatePicker(
                context: context, 
                initialDate: selectDate,
                firstDate: DateTime(2000), 
                lastDate: DateTime(2025),
                initialEntryMode: DatePickerEntryMode.calendarOnly,
              ).then((value) {
                setState(() {
                  selectDate = value!;  
                });
              });
            }, 
              child: Text("Date Picker")
            ),
          ],
        ),
      ),
    );
  }
}