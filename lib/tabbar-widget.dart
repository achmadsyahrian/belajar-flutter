import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Menu 1",
      icon: Icon(Icons.add_photo_alternate),
    ),
    Tab(
      text: "Menu 2",
      icon: Icon(Icons.energy_savings_leaf),
    ),
    Tab(
      text: "Menu 3",
      icon: Icon(Icons.account_balance_outlined),
    ),
  ];
  List<Center> myBody = [
    Center(
      child: Text("Tab 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
    ),
    Center(
      child: Text("Tab 2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
    ),
    Center(
      child: Text("Tab 3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: 'Poppins',
            ),
            backgroundColor: Color.fromARGB(221, 81, 79, 224),
            centerTitle: true,
            title: Text("My Apps"),
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 211, 203, 203),
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(2),
              // indicator: BoxDecoration(color: Colors.amber),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: myBody
          ),
        ),
      ),
    );
  }
}