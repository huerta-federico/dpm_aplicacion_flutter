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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              'Cargando...',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 40,
                  shadows: const [
                    Shadow(
                        blurRadius: 20,
                        color: Colors.blue,
                        offset: Offset(2, 2))
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Expanded(
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
