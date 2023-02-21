import 'package:flutter/material.dart';
import 'package:nav/exammples/login2/screen2login.dart';
import 'package:nav/exammples/login2/screen3login.dart';
import 'package:nav/exammples/login2/screen4login.dart';
import 'package:flutter/cupertino.dart';








enum Gender {male,female,others}

class Logg extends StatelessWidget {
  const Logg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashlogg(),

    );
  }
}


class Splashlogg extends StatefulWidget {
  const Splashlogg({Key? key}) : super(key: key);

  @override
  State<Splashlogg> createState() => _SplashloggState();
}

class _SplashloggState extends State<Splashlogg> {
  final username =TextEditingController();
  final password =TextEditingController();
  bool signin =false;
  bool status =false;
  Gender gender =Gender.male;
  String dropdownvalue ='Container Task' ;
  double _currentSliderValue = 0;
  String batch = '';

  var items = [
    'Container Task',
    'ScrollView Task',
    'GridView Task',

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

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          color: Colors.white54,

          border: Border.all(
            color: Colors.black45,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LOGIN PAGE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                const SizedBox(
                  width: 35,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('1'),
                        onTap: (){
                          batch = "Batch One";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('2'),
                        onTap: (){
                          batch = "Batch Two";
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('3'),
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
                    var str1='Container Task';
                    var str2='ScrollView Task';
                    var str3='GridView Task';
                    var result1 = dropdownvalue.compareTo(str1);
                    var result2 = dropdownvalue.compareTo(str2);
                    var result3 = dropdownvalue.compareTo(str3);
                    if(username.text=="naveen"&&password.text=="rsn"&&result1==0){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sizsiz()),
                      );
                    }
                    else if(username.text=="naveen"&&password.text=="rsn"&&result2==0){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Scrollscroll()),
                      );
                    }
                    else if(username.text=="naveen"&&password.text=="rsn"&&result3==0){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Gridgrid()),
                      );
                    }
                    else{
                      {
                        showDialog(context: context, builder: (BuildContext context){
                          return  CupertinoAlertDialog(
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
