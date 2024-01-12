import 'package:dpm_aplicacion_flutter/screens/cats.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/screens/splash.dart';
import 'package:dpm_aplicacion_flutter/screens/home.dart';
import 'package:dpm_aplicacion_flutter/screens/buscar.dart';
import 'package:dpm_aplicacion_flutter/screens/carrito.dart';
import 'package:dpm_aplicacion_flutter/screens/catalogo.dart';
import 'package:dpm_aplicacion_flutter/screens/perfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tienda eCommerce",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
        initialRoute: 'splash',

      routes: {
        'home': (_) => const HomeScreen(),
        'buscar': (_) => const BuscarScreen(),
        'carrito': (_) => const CarritoScreen(),
        'catalogo': (_) => const CatalogoScreen(),
        'perfil': (_) => const PerfilScreen(),
        'splash': (_) => const SplashScreen(),
        'cats': (_) => CatsScreen(),
      }
    );
  }
}
