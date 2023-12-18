import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Dissmissible"),
      body: ListView.builder(
        padding: EdgeInsets.all(6),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            // direction: DismissDirection.endToStart, //atur posisi tarik slidenya
            onDismissed: (direction) {
              print(direction);
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirmation"),
                    content: Text("Are you sure delete this chat ?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        }, 
                        child: Text("No"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        }, 
                        child: Text("Yes"),
                      ),
                    ],
                  );
                }
              );
            },
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete_sweep, color: Colors.white, size: 30,),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('images/flower.jpg')),
              title: Text(faker.person.name()),
              subtitle: Text(
                faker.lorem.sentence(), 
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
    );
  }
}