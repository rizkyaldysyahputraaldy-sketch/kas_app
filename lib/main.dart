import 'package:flutter/material.dart';
import 'package:kas_app/pages/auth/reva_splash_screen.dart';

void main() {
  runApp(Kas());
}

class Kas extends StatefulWidget {
  const Kas({super.key});

  @override
  State<Kas> createState() => _KasState();
}

class _KasState extends State<Kas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
