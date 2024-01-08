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
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.sizeOf(context).width;
    final heightApp = MediaQuery.sizeOf(context).height;
    final paddingTop = MediaQuery.paddingOf(context).top;

    final myAppBar = appBar("Layouting Builder");
    
    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;
    
    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightBody * 0.5,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  MyContainer(this.widthApp);
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.3,
          height: constraints.maxHeight * 0.8,
          color: Colors.blue,
        );
      },
    );
  }
}