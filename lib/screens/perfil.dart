import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "Mi perfil",
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
        body: const Center(
            child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Datos de perfil',
            style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
              Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
            ]),
          ),
        ])));
  }
}
