import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});

  final String url = "https://api.thecatapi.com/v1/categories";

  Future<dynamic> _getListado() async {
    final respuesta = await http.get(Uri.parse(url));
    if (respuesta.statusCode == 200) {
      return jsonDecode(respuesta.body);
    } else {
      print("Error con la respuesta");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "eCommerce",
            style: TextStyle(color: Colors.blue[900]),
          ),
          actions: <Widget>[
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
                icon: const Icon(
                  Icons.home,
                ),
                label: const Text(
                  "Inicio",
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'catalogo');
                },
                icon: const Icon(
                  Icons.shelves,
                ),
                label: const Text("Catálogo")),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'buscar');
                },
                icon: const Icon(
                  Icons.search,
                ),
                label: const Text("Buscar")),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'carrito');
                },
                icon: const Icon(
                  Icons.shopping_cart,
                ),
                label: const Text("Mi carrito")),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'perfil');
                },
                icon: const Icon(
                  Icons.account_box,
                ),
                label: const Text("Mi perfil")),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: FutureBuilder<dynamic>(
          future: _getListado(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot);
              return ListView(children: listado(snapshot.data));
            } else {
              print("No hay información");
              return Text("Sin data");
            }
          },
          initialData: const Center(child: CircularProgressIndicator()),
        ));
  }
}

List<Widget> listado(List<dynamic> info) {
  List<Widget> lista = [];
  for (var elemento in info) {
    lista.add(Text(elemento['name']));
  }
  return lista;
}
