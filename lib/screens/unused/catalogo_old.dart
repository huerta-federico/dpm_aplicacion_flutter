import 'package:flutter/material.dart';

class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() {
    return _CatalogoScreenState();
  }
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  static String nombreProducto = 'Nombre de producto';
  static String lorem =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna fermentum iaculis eu non diam phasellus vestibulum. Mi quis hendrerit dolor magna eget est. Justo nec ultrices dui sapien eget. Malesuada bibendum arcu vitae elementum curabitur vitae nunc sed.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "Catálogo",
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
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lista de productos',
              style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
                Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Todos',
                    )),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Categoría 1',
                    )),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Categoría 2',
                    )),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Categoría 3',
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
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
                      title: Text(nombreProducto,
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(lorem,
                          style: TextStyle(color: Colors.blue[900])),
                      leading: const Icon(Icons.phone_android),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$ 99,00",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Agregar al carrito',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Vista previa',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Ver detalles',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
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
                      title: Text('$nombreProducto 2',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(lorem,
                          style: TextStyle(color: Colors.blue[900])),
                      leading: const Icon(
                        Icons.phone_android,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$ 199,00",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Agregar al carrito',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Vista previa',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Ver detalles',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
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
                      title: Text('$nombreProducto 3',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(lorem,
                          style: TextStyle(color: Colors.blue[900])),
                      leading: const Icon(Icons.phone_android),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$ 299,00",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Agregar al carrito',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Vista previa',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Ver detalles',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
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
                      title: Text('$nombreProducto 4',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(lorem,
                          style: TextStyle(color: Colors.blue[900])),
                      leading: const Icon(Icons.phone_android),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\$ 399,00",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 25),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Agregar al carrito',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Vista previa',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Ver detalles',
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ]),
        ));
  }
}
