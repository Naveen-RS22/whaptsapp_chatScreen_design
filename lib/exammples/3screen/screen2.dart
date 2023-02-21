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
      body: Center(

        child: InkWell(


            onTap: (){
              Navigator.pushNamed(context, '/screen3');
            },
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("move to 3rd screen"),
                Container(
                  width:300,
                  height:300,
                  color: Colors.red,
                )
              ],
            )
  ),
      ),
    );
  }
}