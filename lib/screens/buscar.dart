import 'package:flutter/material.dart';

class BuscarScreen extends StatelessWidget {
  const BuscarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "Buscar",
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
        body: Center(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: TextField(
              style: TextStyle(color: Colors.blue[900],),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  borderRadius: BorderRadius.circular(25.0),),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),),
                hintText: 'Escriba el nombre del producto',
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            icon: const Icon(Icons.search),
            label: const Text("Buscar", style: TextStyle(fontSize: 20)),
          ),
        ])));
  }
}
