import 'package:flutter/material.dart';
import '../components.ui/navigation.dart';

class BuscarScreen extends StatelessWidget {
  const BuscarScreen({super.key});
  final String title = ('Buscar');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: TextField(
            style: TextStyle(
              color: Colors.blue[900],
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Escriba el nombre del producto',
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Center(
            child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {},
          icon: const Icon(Icons.search),
          label: const Text("Buscar", style: TextStyle(fontSize: 20)),
        )),
      ])),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}
