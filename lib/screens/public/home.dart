import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final String title = ('eCommerce');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'Título de tienda eCommerce',
              style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
                Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
              ]),
            ),
          ),
          Container(
            height: 150,
            width: 350,
            padding: const EdgeInsets.all(10),
            child: const Image(
              image: AssetImage('assets/logo_utpl.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            "Reemplazar por logotipo de eCommerce",
            style: TextStyle(color: Colors.blue[900], fontSize: 12),
          )),
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
                    title: Text(
                      'Título de bienvenida',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text('Mensaje de bienvenida.',
                        style: TextStyle(color: Colors.blue[900]),
                        textAlign: TextAlign.center),
                  ),
                ],
              )),
        ],
      )),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}
