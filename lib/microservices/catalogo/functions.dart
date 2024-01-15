import 'dart:convert';
import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_product.dart';
import 'package:flutter/services.dart' as root_bundle;
import 'package:http/http.dart' as http;

class Functions {
}

Future<List<ProductDataModel>> readJsonData() async {
  final jsondata = await root_bundle.rootBundle
      .loadString('data/microservices/catalogo/productos.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => ProductDataModel.fromJson(e)).toList();
}

Future<dynamic> _getListado() async {
  const String url = "https://dummyjson.com/products";
  final respuesta = await http.get(Uri.parse(url));
  if (respuesta.statusCode == 200) {
    return jsonDecode(respuesta.body);
  } else {
    print("Error con la respuesta");
  }
}