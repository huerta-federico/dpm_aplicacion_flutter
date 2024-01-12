import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_product.dart';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/functions.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

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
        body: FutureBuilder(
          future: readJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;

              return ListView.builder(
                  itemCount: items.isEmpty ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      elevation: 10,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 50,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imageURL.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 8),
                                      child: Text(
                                        items[index].name.toString(),
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 8),
                                      child: Text(
                                        '\$ ${items[index].oldPrice}',
                                        style: TextStyle(
                                            color: Colors.blue[900],
                                            fontSize: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
