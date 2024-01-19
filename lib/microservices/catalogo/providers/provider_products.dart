import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  final String title;
  final String description;
  final num price;
  final String brand;
  final String category;
  final List images;

  const Product({
    required this.title,
    required this.description,
    required this.price,
    required this.brand,
    required this.category,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      description: json['description'],
      price: json['price'],
      brand: json['brand'],
      category: json['category'],
      images: json['images'],
    );
  }
}

class ProductsDataModel {
  Future<List<Product>> getProduct() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<Product> list = [];
      for (var i = 0; i < data['products'].length; i++) {
        final entry = data['products'][i];
        list.add(Product.fromJson(entry));
      }
      return list;
    } else {
      throw Exception('HTTP Failed');
    }
  }


  Future<List<Product>> searchProduct(String keyword) async {
    String query = "https://dummyjson.com/products/search?q=$keyword";
    final response = await http.get(Uri.parse(query));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<Product> list = [];
      for (var i = 0; i < data['products'].length; i++) {
        final entry = data['products'][i];
        list.add(Product.fromJson(entry));
      }
      return list;
    } else {
      throw Exception('HTTP Failed');
    }
  }
}
