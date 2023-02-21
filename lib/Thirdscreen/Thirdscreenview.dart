import 'package:flutter/material.dart';
import 'package:nav/splashscreen/Splashscreenview.dart';


class Thirdscreenview extends StatefulWidget {
  const Thirdscreenview({Key? key}) : super(key: key);

  @override
  State<Thirdscreenview> createState() => _ThirdscreenviewState();
}

class _ThirdscreenviewState extends State<Thirdscreenview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: Center(

        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Joy()),
            );
          },
            child:  Text("move to 1st screen")),
        ),


    );
  }
}

