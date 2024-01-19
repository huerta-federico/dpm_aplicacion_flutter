import 'package:dpm_aplicacion_flutter/screens/admin/product_details.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_products.dart';

class ProductsSearchScreen extends StatefulWidget {
  const ProductsSearchScreen({super.key});

  @override
  _ProductsSearchScreenState createState() => _ProductsSearchScreenState();
}

class _ProductsSearchScreenState extends State<ProductsSearchScreen> {
  final items = List.generate(30, (i) => i);
  String title = ('Resultados de búsqueda');

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    String query = arguments['query'];
    return Scaffold(
      appBar: headerNav(title: title, context: context),
      body: Center(
        child: FutureBuilder<List<Product>>(
            future: ProductsDataModel().searchProduct(query),
            builder: ((context, AsyncSnapshot snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
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
              } else if (snapshot.data == null) {
                return ElevatedButton.icon(
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
                    label: const Text("Buscar"));
              }
              return const CircularProgressIndicator();
            })),
      ),
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
