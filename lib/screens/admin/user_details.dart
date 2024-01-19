import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_users.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';

class UserDetails extends StatelessWidget {
  final User user;
  final String title = ('Detalles de usuario');
  const UserDetails({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    String firstName = user.firstName;
    String lastName = user.lastName;
    return Scaffold(
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: Column(children: [
        const SizedBox(height: 30),
        Image.network(user.image),
        const SizedBox(height: 30),
        Text('$firstName $lastName'),
        Text(user.email)
      ])),
    );
  }
}
