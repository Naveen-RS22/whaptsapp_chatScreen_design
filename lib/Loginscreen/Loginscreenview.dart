import 'package:flutter/material.dart';


class seee2 extends StatefulWidget {
  const seee2({Key? key}) : super(key: key);

  @override
  State<seee2> createState() => _seee2State();
}

class _seee2State extends State<seee2> {
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
