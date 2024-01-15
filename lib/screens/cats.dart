import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../components.ui/navigation.dart';

class CatsScreen extends StatelessWidget {
  const CatsScreen({super.key});
  final String title = ('The Cat API');
  // final String url = "https://api.thecatapi.com/v1/categories";
  final String url = "https://dummyjson.com/products/categories";

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
      appBar: headerNav(title: title, context: context),
      body: FutureBuilder(
        future: _getListado(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot);
            return Center(child: ListView(children: listado(snapshot.data)));
          } else {
            print("No hay información");
            return Text("Sin data");
          }
        },
        initialData: const Center(child: CircularProgressIndicator()),
      ),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}

List<Widget> listado(List<dynamic> info) {
  List<Widget> lista = [];
  for (var elemento in info) {
    lista.add(Text(elemento));
  }
  return lista;
}
