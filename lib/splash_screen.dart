import 'dart:async';

import 'package:flutter/material.dart';
import 'package:windyanggreni_casestudies/screen_pages/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg_splash.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Image(
                image: AssetImage('images/logo_splash.png'),
                height: 300,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
