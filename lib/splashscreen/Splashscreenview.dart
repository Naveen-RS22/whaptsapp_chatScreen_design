import 'package:flutter/material.dart';
import 'package:nav/exammples/login2/screen2login.dart';

import 'package:flutter/cupertino.dart';

import '../Thirdscreen/Thirdscreenview.dart';









enum Gender {male,female,others}

class Joy extends StatelessWidget {
  const Joy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fun(),

    );
  }
}


class Fun extends StatefulWidget {
  const Fun({Key? key}) : super(key: key);

  @override
  State<Fun> createState() => _FunState();
}

class _FunState extends State<Fun> {
  final username =TextEditingController();
  final password =TextEditingController();
  bool signin =false;

  bool status =false;
  Gender gender =Gender.male;
  String dropdownvalue ='nav 1' ;
  double _currentSliderValue = 0;
  String batch = '';

  var items = [
    'nav 1',
    'nav 2',
    'nav 3',

  ];
  showsheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Bottom sheet',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children:  [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/screenn2');
                    },
                    child: const Text("LOGIN PAGE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Container task'),
                        onTap: (){
                          batch = "Batch One";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('ScrollView Task'),
                        onTap: (){
                          batch = "Batch Two";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('GridView Task'),
                        onTap: (){
                          batch = "Batch Three";
                        },
                      ),
                    ]
                ),
                DropdownButton(
                  value: dropdownvalue,

                  icon: const Icon(Icons.more_vert),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),

            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'enter your name',
                  labelText: 'name',
                ),
                controller: username,

              ),
            ),
            SizedBox(

              width: 200,
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'enter password',
                  labelText: 'Password',
                ),
                controller: password,
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: Gender.male,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const Text('Male'),
                Radio(
                  value: Gender.female,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const Text('Female'),
                Radio(
                  value: Gender.others,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const Text('Others'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _currentSliderValue,
                  max: 100,
                  divisions: 5,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: signin,
                  onChanged: (value) {
                    setState(() {
                      signin = value!;
                    });
                  },
                ),
                const Text('accept terms and conditions'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                ),
                const Text('Auto sign'),
                const SizedBox(
                  width: 50,
                ),


                ElevatedButton(
                  onPressed: (){

                    if(username.text=="naveen"&&password.text=="rsn"&& signin==true){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Thirdscreenview()),
                      );
                    }
                    else{
                      {
                        showDialog(context: context, builder: (BuildContext context){
                          return  AlertDialog(
                            title: const Text("Alert!!!!!"),
                            content: const Text("incorrect Details"),
                            actions:[
                              TextButton(
                                child: const Text("Ok"),
                                onPressed:(){
                                  showsheet();
                                },
                              ),
                            ],
                          );
                        });
                      }

                    }
                  },

                  child: const Text('Login',style: TextStyle(fontSize: 20)),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
