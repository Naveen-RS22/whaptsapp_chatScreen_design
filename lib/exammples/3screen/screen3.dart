import 'package:flutter/material.dart';
//import 'package:nav/exammples/3screen/screen1.dart';


class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: Center(
        child :Column(
          children: [
            Image.asset('ppp.png'),


        InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child:  Text("move to z1st screen")),
          ], ),
    ),


    );
  }
}

