import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  final String email;
  final String image;
  final String firstName;
  final String lastName;

  const User({
    required this.email,
    required this.image,
    required this.firstName,
    required this.lastName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      image: json['image'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }
}

class UsersDataModel {
  Future<List<User>> getUser() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/users"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<User> list = [];
      for (var i = 0; i < data['users'].length; i++) {
        final entry = data['users'][i];
        list.add(User.fromJson(entry));
      }
      return list;
    } else {
      throw Exception('HTTP Failed');
    }
  }
}
