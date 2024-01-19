import "package:dpm_aplicacion_flutter/main.dart";
import "package:flutter/material.dart";

class AdminRedirectScreen extends StatefulWidget {
  const AdminRedirectScreen({super.key});

  @override
  State<AdminRedirectScreen> createState() => AdminRedirectScreenState();
}

class AdminRedirectScreenState extends State<AdminRedirectScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (!mounted) {
      return;
    }

    final session = supabase.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushReplacementNamed('admin');
    } else {
      Navigator.of(context).pushReplacementNamed('perfil');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
