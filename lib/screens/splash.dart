import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 500), () {});
    Navigator.pushReplacementNamed(context, 'home');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "¡Bienvenido a mi aplicación!",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Cargando...",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/utpl_logo_2.png'),
                    width: 400,
                    height: 300,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
