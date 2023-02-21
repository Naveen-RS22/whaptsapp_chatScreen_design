import 'package:flutter/material.dart';

import 'Layers/layer_one.dart';
import 'Layers/layer_three.dart';


class Okk extends StatelessWidget {
  const Okk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('primaryBg.png'),
              fit: BoxFit.cover,
            )),
        child: Stack(
          children: <Widget>[
            const Positioned(
                top: 200,
                left: 59,
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
            Positioned(top: 290, right: 0, bottom: 0, child: LayerOne()),
            Positioned(top: 320, right: 0, bottom: 0, child: LayerThree()),
          ],
        ),
      ),
    );
  }
}