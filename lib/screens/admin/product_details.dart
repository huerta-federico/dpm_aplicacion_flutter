import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_products.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  final String title = ('Detalles de producto');
  const ProductDetails({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    String title = product.title;
    String brand = product.brand;
    String price = product.price.toString();
    return Scaffold(
        appBar: headerNav(title: title, context: context),
        body: Center(
            child: ListView(children: [
          const SizedBox(height: 20),
          Center(
            child: Text('$brand $title'),
          ),
          const SizedBox(height: 20),
          Center(child: Text(product.description)),
          const SizedBox(height: 20),
          Center(child: Text('\$ $price')),
          Center(child: Text(product.category)),
          const SizedBox(height: 20),
          for (int i = 0; i < product.images.length; i++)
            Column(children: <Widget>[
              Center(
                child: Image(
                  image: NetworkImage(product.images[i].toString()),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
            ]),
        ])));
  }
}
