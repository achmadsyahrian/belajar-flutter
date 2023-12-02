import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 240, 240, 243),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 81, 79, 224),
          title: Center(
            child: Text(
              "Extract Widget",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ChatItem(
                  imageUrl: "https://picsum.photos/id/${index + 2}/100/100",
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence(),
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  
  const ChatItem({this.imageUrl = 'images/mypict.jpg', this.title = 'Achrian', this.subtitle = 'Lorem ipsum'});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(221, 81, 79, 224),
        backgroundImage: NetworkImage(imageUrl),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      dense: true,
      title: Text(title, 
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600
        ),
      ),
      subtitle: Text(subtitle,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text("09.00 AM"),
    );
  }
}