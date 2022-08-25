import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'layout.dart';
class SplacchScreen extends StatefulWidget {
  const SplacchScreen({Key? key}) : super(key: key);

  @override
  State<SplacchScreen> createState() => _SplacchScreenState();
}

class _SplacchScreenState extends State<SplacchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 20,
        splash: Image(image: AssetImage('assets/img.png'),),
        nextScreen: LayOut(),
        splashTransition: SplashTransition.rotationTransition,

      ),
    );
  }
}