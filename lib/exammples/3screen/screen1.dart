import 'package:flutter/material.dart';
import 'package:nav/exammples/3screen/screen2.dart';
import 'package:nav/exammples/3screen/screen3.dart';




class Init2 extends StatelessWidget {
  const Init2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const screen1(),
        '/screen2': (context) => const screen2(),
        '/screen3': (context) => const screen3(),
      },
    );
  }
}



class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/screen2');

              },

              child: Container(
                width:300,
                height:300,
                color: Colors.lightGreen,

              ),
            ),

          ],
        ),

      ),
    );
  }
}


