import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slicing_linkaja/pages/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Durations.extralong3, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade700.withOpacity(0.8),
      body: Center(
        child: Image.asset('assets/LinkAja.png'),
      ),
    );
  }
}
