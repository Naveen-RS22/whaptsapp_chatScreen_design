import 'package:flutter/material.dart';
import 'dart:async';

import 'package:nav/exammples/login1/screen1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'Goood.dart';



class klkl extends StatelessWidget {
  const klkl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({Key? key}) : super(key: key);

  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration =  const Duration(seconds: 3);
    return  Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const oodW(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    animationController =  AnimationController(
        vsync: this, duration: const Duration(seconds: 3));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
    splashIconSize: double.maxFinite;
  }

  @override

  dispose() {
    animationController.dispose(); // you need this
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/WhatsAp.png',
                width: animation.value * 400,
                height: animation.value * 400,
              ),
            ],
          ),
        ],
      ),
    );

  }
}

