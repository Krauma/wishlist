import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

class Product {
  int id;
  String name;
  String price;
  String imageLink;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageLink,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        imageLink: json['image_link']);
  }
}
