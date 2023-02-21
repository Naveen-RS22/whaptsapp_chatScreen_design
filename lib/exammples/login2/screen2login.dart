import 'package:flutter/material.dart';
import 'package:nav/exammples/login2/screen1login.dart';

class Sizsiz extends StatefulWidget {
  const Sizsiz({Key? key}) : super(key: key);

  @override
  State<Sizsiz> createState() => _SizsizState();
}

class _SizsizState extends State<Sizsiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(

          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Return'),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => const Splashlogg()),
                      );
                    },
                  ),

                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),


                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.grey,


            ),
          ],
        ),
      ),
    );
  }
}