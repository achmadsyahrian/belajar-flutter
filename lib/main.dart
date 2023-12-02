import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> generateChatTiles(String title, String subtitle, String time) {
    return [
      ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      title: Text(title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(subtitle,
        overflow: TextOverflow.ellipsis,
      ),
      dense: true,
      leading: CircleAvatar(
        // backgroundColor: Color.fromARGB(221, 81, 79, 224),
        backgroundImage: AssetImage(
          "images/mypict.jpg",
        ),
      ),
      trailing: Text(time),
    ),
    Divider()
    ];
  }
  
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
              "WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
            ...generateChatTiles("Achmad Syahrian", "saya mau membuat program yang bertujuan untuk men-generate kata - kata dalam bahasa Indonesia secara acak. Jumlah katanya bedasarkan input dari User. Saya mau tau, apakah ada semacam API ato Library untuk kamus bahasa Indonesia?", "21:05 PM"),
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
            ...generateChatTiles("Wisnu", "Bg windah live gak?", "10:15 AM"),
            ...generateChatTiles("Dosen Killer", "Jangan TELATTT!!!", "17:45 PM"),
          ],
        ),
      ),
    );
  }
}