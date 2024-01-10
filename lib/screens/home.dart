import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: Text(
          "Inicio",
          style: TextStyle(color: Colors.deepPurple[600]),
        ),
        actions: <Widget>[
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'home');
              },
              icon: const Icon(Icons.home),
              label: const Text("Inicio")),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'catalogo');
              },
              icon: const Icon(Icons.shelves),
              label: const Text("Catálogo")),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'buscar');
              },
              icon: const Icon(Icons.search),
              label: const Text("Buscar")),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'carrito');
              },
              icon: const Icon(Icons.shopping_cart),
              label: const Text("Mi carrito")),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'perfil');
              },
              icon: const Icon(Icons.account_box),
              label: const Text("Mi perfil")),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            "Título 1",
            style: TextStyle(color: Colors.indigo, fontSize: 40),
          ),
          Text(
            "Título 2",
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
          Text(
            "Título 3",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
          Text(
            "Título 4",
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Mookie chewing on a very important paper note.",
            style: TextStyle(color: Colors.indigo, fontSize: 30),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/cat.jpg'),
                  width: 400,
                  height: 400,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
