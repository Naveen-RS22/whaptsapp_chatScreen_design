import 'package:flutter/material.dart';


import '../Login Demo/ProLog.dart';
import '../login2/screen1login.dart';
import 'SecondLoad.dart';


class Firstu extends StatelessWidget {
  const Firstu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Firstuu(),
    );
  }
}

class Firstuu extends StatefulWidget {
  const Firstuu({Key? key}) : super(key: key);


  @override
  State<Firstuu> createState() => _FirstuuState();
}

class _FirstuuState extends State<Firstuu> {
  int _BottomIndex=0;
  final List<Widget>_options=<Widget>[

    networkapi(),
    const Text("Home ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    const Text(" Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    // const Text("Home Page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    // Okk(),
    // const Splashlogg(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _options.elementAt(_BottomIndex),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white54,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.login_sharp),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'form',
          ),
        ],
        currentIndex: _BottomIndex,
        onTap: (int index){
          setState(() {
            _BottomIndex=index;
          });

        },
      ),
    );
  }
}


