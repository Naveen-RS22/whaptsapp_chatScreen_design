import 'package:flutter/material.dart';


class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Back TO Screen'),
      ),

      body: const Center(

        child: Text("LOGIN SUCESSFUL"),
      ),
    );
  }
}
