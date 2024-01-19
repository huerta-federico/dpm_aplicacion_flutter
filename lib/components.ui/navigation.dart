import 'package:flutter/material.dart';

class CreateAppBar {}

AppBar headerNav2({title, context}) {
  return AppBar(
    backgroundColor: Colors.blue[300],
    title: Text(
      title,
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
  );
}

AppBar headerNav({title, context}) {
  return AppBar(
    backgroundColor: Colors.blue[300],
    title: Text(
      title,
      style: TextStyle(color: Colors.blue[900]),
    ),
  );
}

AppBar headerNavSearch({title, context}) {
  return AppBar(
    backgroundColor: Colors.blue[300],
    title: Text(
      title,
      style: TextStyle(color: Colors.blue[900]),
    ),
    actions: <Widget>[
      ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'buscar');
          },
          icon: const Icon(
            Icons.account_box,
          ),
          label: const Text("Regresar")),
      const SizedBox(
        width: 10,
      )
    ],
  );
}

Drawer drawerHeaderNav({title, context}) {
  return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
    ListTile(
        title: const Text('Home'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'home');
        }),
    ListTile(
        title: const Text('Catálogo'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'catalogo');
        }),
    ListTile(
        title: const Text('Buscar'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'buscar');
        }),
    ListTile(
        title: const Text('Mi carrito'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'carrito');
        }),
    ListTile(
        title: const Text('Iniciar sesion'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'perfil');
        }),
    ListTile(
        title: const Text('Panel de admin'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'adminRedirect');
        }),
    ListTile(
        title: const Text('The Cat API'),
        onTap: () {
          Navigator.pushReplacementNamed(context, 'cats');
        }),
  ]));
}
