import 'package:flutter/material.dart';

class Product {
  @required String judul, imageUrl, deskripsi;
  @required int harga;

  Product({required this.judul, required this.harga, required this.deskripsi, required this.imageUrl});
  
}