import 'package:dpm_aplicacion_flutter/screens/admin/admin_dashboard.dart';
import 'package:dpm_aplicacion_flutter/screens/admin/products.dart';
import 'package:dpm_aplicacion_flutter/screens/public/admin_redirect.dart';
import 'package:dpm_aplicacion_flutter/screens/public/gallery.dart';
import 'package:dpm_aplicacion_flutter/screens/public/search_product.dart';
import 'package:dpm_aplicacion_flutter/screens/unused/cats.dart';
import 'package:dpm_aplicacion_flutter/screens/admin/users.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/screens/public/splash.dart';
import 'package:dpm_aplicacion_flutter/screens/public/home.dart';
import 'package:dpm_aplicacion_flutter/screens/public/search.dart';
import 'package:dpm_aplicacion_flutter/screens/public/cart.dart';
import 'package:dpm_aplicacion_flutter/screens/unused/list_shoes.dart';
import 'package:dpm_aplicacion_flutter/screens/public/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    // These variables will be exposed on the app, and that's completely fine since we have Row Level Security enabled on our Database.
    // PostgreSQL's Row Level Security (RLS).
    url: 'https://qykhysiuczyziyvpvxkt.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF5a2h5c2l1Y3p5eml5dnB2eGt0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU1MzU4MTcsImV4cCI6MjAyMTExMTgxN30.qytiFmG1eYj_pHirbJHjNF45NzlhOwjNuS0B2sN6beI',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

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
          'buscar': (_) => SearchScreen(),
          'carrito': (_) => const CartScreen(),
          'catalogo': (_) => const ProductsListScreen(),
          'shoes': (_) => const ShoesListScreen(),
          'perfil': (_) => const LoginScreen(),
          'splash': (_) => const SplashScreen(),
          'cats': (_) => const CatsScreen(),
          'users': (_) => const UsersListScreen(),
          'admin': (_) => const AdminDashboardScreen(),
          'products': (_) => const ProductsListScreen(),
          'productSearch': (_) => const ProductsSearchScreen(),
          'adminRedirect': (_) => const AdminRedirectScreen(),
          'gallery': (_) => GalleryScreen(),
        });
  }
}

