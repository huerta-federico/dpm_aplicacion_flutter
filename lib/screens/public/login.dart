import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';
import 'package:dpm_aplicacion_flutter/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String title = "Iniciar sesión";
  bool _isLoading = false;
  bool _redirecting = false;
  late final TextEditingController _emailController = TextEditingController();
  late final StreamSubscription<AuthState> _authStateSubscription;

  Future<void> _signIn() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await supabase.auth.signInWithOtp(
        email: _emailController.text.trim(),
        emailRedirectTo:
            kIsWeb ? null : 'io.supabase.flutterquickstart://login-callback/',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('¡Revisa tu bandeja de entrada!')),
        );
        _emailController.clear();
      }
    } on AuthException catch (error) {
      SnackBar(
        content: Text(error.message),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
    } catch (error) {
      SnackBar(
        content: const Text('Error inesperado.'),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      if (_redirecting) return;
      final session = data.session;
      if (session != null) {
        _redirecting = true;
        Navigator.of(context).pushReplacementNamed('/account');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _authStateSubscription.cancel();
    super.dispose();
  }

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
          child: TextFormField(
            controller: _emailController,
            style: TextStyle(
              color: Colors.blue[900],
            ),
            decoration: InputDecoration(
              label: Text('Email'),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              icon: const Icon(Icons.login),
              onPressed: _isLoading ? null : _signIn,
              label: Text(_isLoading ? 'Enviando' : 'Enviar Magic Link',
                  style: const TextStyle(fontSize: 20)),
            ),
            const SizedBox(
              width: 10,
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
