

import 'package:flutter/material.dart';

import 'package:nav/exammples/login1/screen2.dart';


import '../config.dart';

class LayerThree extends StatelessWidget {
  final username =TextEditingController();
  final password =TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height:400,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children:  <Widget>[
              const Positioned(
                left: 59,
                top: 20,
                child: Text(
                  'Username',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                  left: 59,
                  top: 55,
                  child: SizedBox(
                    width: 310,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter User ID or Email',
                        hintStyle: TextStyle(color: hintText),
                      ),
                      controller: username,
                    ),
                  )),
              const Positioned(
                left: 59,
                top: 110,
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                  left: 59,
                  top: 145,
                  child: SizedBox(
                    width: 310,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: hintText),
                      ),
                      controller: password,
                    ),
                  )),

              Positioned(
                left: 290,
                top: 225,
                child: TextButton(
                  onPressed: (){
                    if(username.text== "naveen" && password.text== "vengi"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const screen2()),
                      );
                    }
                  },
                  child: const Text('login',style: TextStyle(fontSize: 20)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}