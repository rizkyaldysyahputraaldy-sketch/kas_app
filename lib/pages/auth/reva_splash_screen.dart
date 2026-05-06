import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;
  @override
  void initState() {
    t = Timer.periodic(Duration(milliseconds: 3000), (timer) {
      if (!mounted) return;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 100),
            Icon(
              Icons.account_balance_wallet_outlined,
              size: 95,
              color: Colors.teal,
            ),
            Text(
              "APK KAS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Pemasukan Dan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Text(
              "Pengeluaran Dengan Mudah",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 265),
          ],
        ),
      ),
    );
  }
}
