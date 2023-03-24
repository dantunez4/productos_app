// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

class Product {
  Product({
    required this.available,
    required this.name,
    required this.price,
    this.picture,
    this.id,
  });

  bool available;
  String name;
  double price;
  String? picture;
  String? id;

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        available: json["available"],
        name: json["name"],
        price: json["price"].toDouble(),
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "name": name,
        "price": price,
        "picture": picture,
      };

  Product copy() => Product(
        available: available,
        name: name,
        price: price,
        picture: picture,
        id: id,
      );
}
