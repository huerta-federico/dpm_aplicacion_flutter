import 'package:flutter/material.dart';
import '../components.ui/navigation.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});
  final String title = ('Mi perfil');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerNav(title: title, context: context),
      body: Center(
          child: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
            child: Text(
          'Inicio de sesión',
          style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
            Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
          ]),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
            style: TextStyle(
              color: Colors.blue[900],
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Escriba su correo',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.blue[900],
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: 'Escriba su contraseña',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              icon: const Icon(Icons.login),
              label:
                  const Text("Iniciar sesión", style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
              ),
              onPressed: () {},
              icon: const Icon(Icons.help),
              label: const Text("Recuperar contraseña",
                  style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
            child: Column(children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            icon: const Icon(Icons.person_add),
            label: const Text("Crear cuenta", style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/logo_google.png",
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            ),
            label: const Text("Conectar con Google",
                style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/logo_facebook.png",
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            ),
            label: const Text("Conectar con Facebook",
                style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/logo_microsoft.png",
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            ),
            label: const Text("Conectar con Microsoft",
                style: TextStyle(fontSize: 20)),
          ),
        ]))
      ])),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}
