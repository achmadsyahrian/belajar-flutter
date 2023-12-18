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
      theme: ThemeData(fontFamily: 'Poppins'),
      darkTheme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Dialog"),
      body: Center(
        child: Text(data, style: TextStyle(fontSize: 20),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog( //fungsi untuk menampilkan dialog/alert
            context: context, 
            builder: (context) {
              return AlertDialog(
                title: Text("Confirmation"),
                content: Text("Are you sure to delete this data?"),
                actions: [
                  TextButton( //button yg hanya berupa text (Tanpa border tombol)
                    onPressed: () {
                      setState(() {
                        data = "Data Deletion Canceled !";
                      });
                      Navigator.pop(context, false); //menghapus lapisan terluar / popup nya
                    }, 
                    child: Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "Delete Data Successfully !";
                      });
                      Navigator.pop(context, true); //menghapus lapisan terluar / popup nya
                    }, 
                    child: Text("Yes"),
                  )
                ],
                // backgroundColor: Color.fromARGB(221, 81, 79, 224),
                // icon: Icon(Icons.confirmation_number_sharp),
              );
            }
          ).then((value) => print(value)); 
        },
        child: Icon(Icons.delete_outlined, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}