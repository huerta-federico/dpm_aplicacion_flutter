import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});
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
          'Admin Dashboard',
          style: TextStyle(color: Colors.blue, fontSize: 40, shadows: [
            Shadow(blurRadius: 20, color: Colors.blue, offset: Offset(2, 2))
          ]),
        )),
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
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('users');
            },
            icon: const Icon(Icons.people),
            label: const Text("Manage Users", style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('products');
            },
            icon: const Icon(Icons.store),
            label:
                const Text("Manage Products", style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(
            height: 10,
          ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('shoes');
                },
                icon: const Icon(Icons.developer_mode),
                label:
                const Text("TEST: View shoes", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('cats');
                },
                icon: const Icon(Icons.developer_mode),
                label:
                const Text("TEST: The Cat API", style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(
                height: 10,
              ),
        ]))
      ])),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}
