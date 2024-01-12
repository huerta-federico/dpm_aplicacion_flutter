import 'package:flutter/material.dart';

class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});
  static String nombreProducto = 'Nombre de producto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "Mi carrito",
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
            'Carrito de compras',
            style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
              Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
            ]),
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
                    title: Text('$nombreProducto 1',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Datos del producto',
                        style: TextStyle(color: Colors.blue[900])),
                    leading: const Icon(Icons.phone_android),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 199,00",
                        style: TextStyle(color: Colors.blue[900], fontSize: 25),
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
                            'Modificar cantidad',
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Eliminar',
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
                    subtitle: Text('Datos del producto',
                        style: TextStyle(color: Colors.blue[900])),
                    leading: const Icon(Icons.phone_android),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 299,00",
                        style: TextStyle(color: Colors.blue[900], fontSize: 25),
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
                            'Modificar cantidad',
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Eliminar',
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
                    subtitle: Text('Datos del producto',
                        style: TextStyle(color: Colors.blue[900])),
                    leading: const Icon(Icons.phone_android),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 399,00",
                        style: TextStyle(color: Colors.blue[900], fontSize: 25),
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
                            'Modificar cantidad',
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Eliminar',
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
              )
          ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text('Total',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    subtitle: Text(
                      "\$ 399,00",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue[900], fontSize: 25),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Ir a Checkout',
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Eliminar carrito',
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
        ])));
  }
}
