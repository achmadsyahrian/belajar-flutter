import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
        appBar: appBar("Text Field"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                inputField(),
                SizedBox(height: 20,),
                inputField(),
                SizedBox(height: 20,),
                inputField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField inputField() {
    return TextField(
      // // Fitur
      // autocorrect: true,
      // autofocus: true,
      // maxLength: 20,
      // enableSuggestions: true,
      // // enableInteractiveSelection: false,
      // enabled: true,
      // // obscureText: true, //password
      // // obscuringCharacter: "*", //custom password
      // keyboardType: TextInputType.number,
      // cursorColor: Colors.black,
      // textAlign: TextAlign.right,
      // // readOnly: true,
      showCursor: true,
      // cursorWidth: 10,
      // cursorRadius: Radius.circular(10),
      textAlignVertical: TextAlignVertical.center,
      textCapitalization: TextCapitalization.words,
      style: TextStyle(
        color: Color.fromARGB(221, 81, 79, 224),
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(Icons.person),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(Icons.library_add_check_rounded),
        ),
        prefixIconColor: Color.fromARGB(221, 81, 79, 224),
        suffixIconColor: Color.fromARGB(221, 81, 79, 224),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.red
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Color.fromARGB(221, 81, 79, 224),
            width: 2
          )
        ),
        hintText: "Achmad Syahrian", //place holder
        hintStyle: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(190, 172, 172, 172)
        ),
        labelText: "Name",
        labelStyle: TextStyle(
          color: Color.fromARGB(221, 81, 79, 224),
        ),
        floatingLabelStyle: TextStyle(
          color: Colors.black
        ),
      ),
    );
  }
}