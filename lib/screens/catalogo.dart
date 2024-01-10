import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[100],
          title: Text(
            "Catálogo",
            style: TextStyle(color: Colors.deepPurple[600]),
          ),
          actions: <Widget>[
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
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
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Lista de productos',
              style: TextStyle(
                  color: Colors.deepPurple[500],
                  fontSize: 40,
                  shadows: [
                    Shadow(
                        blurRadius: 20,
                        color: Colors.deepPurple,
                        offset: Offset(2, 2))
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.all(20),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Título de la card',
                          style: TextStyle(
                              color: Colors.deepPurple[500],
                              fontWeight: FontWeight.bold)),
                      subtitle: Text('Info de la card',
                          style: TextStyle(color: Colors.deepPurple[500])),
                      leading: Icon(Icons.phone_android),
                    ),
                    Text(
                      "\$ 99,00",
                      style: TextStyle(
                          color: Colors.deepPurple[500], fontSize: 25),
                      textAlign: TextAlign.end,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text('Vista previa')),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Ver detalles')),
                      ],
                    ),
                  ],
                )),
          ]),
        ));
  }
}
