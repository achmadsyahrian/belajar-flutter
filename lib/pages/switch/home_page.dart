import 'dart:math';

import 'package:faker/faker.dart';
import 'package:first_project/models/product.dart';
import 'package:first_project/partials/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Product> fakeData = List.generate(20, (index) {
    return Product(judul: faker.person.name(), harga: 14000 + Random().nextInt(200000), deskripsi: faker.lorem.sentence(), imageUrl: "https://picsum.photos/id/${index}/200/");
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Model"),
      body: GridView.builder(
        itemCount: fakeData.length,
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ), 
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(fakeData[index].imageUrl),
            footer: Container(
              alignment: Alignment.center,
              color: Color.fromARGB(207, 155, 154, 231),
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(fakeData[index].judul,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    maxLines: 1,
                  ),
                  Text("Rp. ${fakeData[index].harga}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(fakeData[index].deskripsi,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}