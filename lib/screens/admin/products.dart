import 'package:dpm_aplicacion_flutter/screens/admin/product_details.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_products.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({super.key});

  @override
  _ProductsListScreenState createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  late Future<List<Product>> futureProducts;
  final items = List.generate(30, (i) => i);
  String title = ('Productos');

  @override
  void initState() {
    super.initState();
    // Función que solicita el listado de productos
    futureProducts = ProductsDataModel().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: FutureBuilder<List<Product>>(
        future: futureProducts,
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  Product product = snapshot.data?[index];
                  String title = product.title;
                  String brand = product.brand;
                  String price = product.price.toString();
                  return ListTile(
                      title: Text('$brand $title'),
                      subtitle: Text('\$ $price'),
                      trailing: const Icon(Icons.chevron_right_outlined),
                      onTap: (() => {openPage(context, product)}));
                },
                separatorBuilder: (context, index) {
                  return const Divider(color: Colors.blueAccent);
                },
                itemCount: snapshot.data!.length);
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }),
      )),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}

openPage(context, Product product) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetails(
                product: product,
              )));
}
