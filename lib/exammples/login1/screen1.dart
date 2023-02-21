import 'package:flutter/material.dart';
import 'package:nav/exammples/login1/screen2.dart';






class Init22 extends StatelessWidget {
  const Init22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splashscreenview(),
        '/screen2': (context) => screen2(),

      },
    );
  }
}



class Splashscreenview extends StatefulWidget {
  const Splashscreenview({Key? key}) : super(key: key);

  @override
  State<Splashscreenview> createState() => _SplashscreenviewState();
}

class _SplashscreenviewState extends State<Splashscreenview> {
  final username =TextEditingController();
  final password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center
          ,
          children:  [
            const Text("Login Screen",style: TextStyle(fontSize: 20)),
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
              height: 100,
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
            TextButton(
              onPressed: (){
                if(username.text== "naveen" && password.text== "vengi"){
                  Navigator.pushNamed(context, '/screen2');
                }
              },
              child: const Text('login',style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}






