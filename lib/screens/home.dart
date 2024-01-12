import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Título de tienda eCommerce',
            style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
              Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
            ]),
          ),
          Container(
            height: 150,
            width: 350,
            padding: const EdgeInsets.all(10),
            child: const Image(
              image: AssetImage('assets/logo_utpl.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Reemplazar por logotipo de eCommerce",
            style: TextStyle(color: Colors.blue[900], fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
              color: Colors.blue[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(20),
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Título de bienvenida',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text('Mensaje de bienvenida.',
                        style: TextStyle(color: Colors.blue[900]),
                        textAlign: TextAlign.center),
                  ),
                ],
              )),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'cats');
              },
              icon: const Icon(
                Icons.api,
              ),
              label: const Text(
                "Prueba de TheCatAPI",
              )),
          Text(
            "Botón temporal",
            style: TextStyle(color: Colors.blue[900], fontSize: 12),
          ),
        ],
      )),
    );
  }
}
