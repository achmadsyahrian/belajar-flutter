import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();

  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: appBar("Control Text Field"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          myController.text = "";
                          hasil = "";
                        });
                      } , 
                      icon: Icon(Icons.disabled_by_default),
                    )
                  ),
                  controller: myController,
                  onChanged: (value) {
                    setState(() {
                      hasil = value;
                    });
                  } ,
                  // onSubmitted: (value) {
                    
                  // },
                  // onEditingComplete: () {
                  //   print("Edit Success");
                  //   print(myController.text);
                  // },
                ),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}