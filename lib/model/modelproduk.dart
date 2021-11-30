import 'dart:convert';

import 'package:flutter/material.dart';

ModelProduk modelProdukFromJson(String str) =>
    ModelProduk.fromJson(json.decode(str));

String modelProdukToJson(ModelProduk data) => json.encode(data.toJson());

class ModelProduk {
  ModelProduk({
    required this.namakatalog,
    required this.warna,
    required this.harga,
    required this.foto,
  });

  String namakatalog;
  Color warna;
  String harga;
  String foto;

  factory ModelProduk.fromJson(Map<String, dynamic> json) => ModelProduk(
        namakatalog: json["namakatalog"],
        warna: json["warna"],
        harga: json["harga"],
        foto: json["foto"],
      );

  Map<String, dynamic> toJson() => {
        "namakatalog": namakatalog,
        "warna": warna,
        "harga": harga,
        "foto": foto,
      };
}
